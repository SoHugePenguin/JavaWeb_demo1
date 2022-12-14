package com.example.javawebdemo1;

import com.example.javawebdemo1.MD5_pwd.md5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static com.example.javawebdemo1.jdbc.Main.connection;
import static com.example.javawebdemo1.jdbc.Main.druid_connection;

/**
 * @Title registerServlet
 * @Author SoHugePenguin
 * @date 2022/12/14 19:10
 */
@WebServlet("/register")
public class registerServlet extends HttpServlet {
    private static final String salt = "chen114514";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //        别你妈在这里加构造函数还半天没找着哪里有问题，我真的，哭死
        //        super.service(req, resp);
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //避免服务器转移URL期间乱码导致报错404

        String userName = req.getParameter("userName");
        String userPwd = req.getParameter("userPwd");

        if (userName == null || "".equals(userName.trim())) {
            //跳转服务器
            req.setAttribute("message", "用户名不能为空");
            req.getRequestDispatcher("1.4注册界面.jsp").forward(req, resp);
            return;
        }
        if (userPwd == null || "".equals(userPwd.trim())) {
            //跳转服务器
            req.setAttribute("message", "密码不能为空");
            req.getRequestDispatcher("1.4注册界面.jsp").forward(req, resp);
            return;
        }

        //MD5加密+加盐二次加密
        userPwd = md5.transform(userPwd, salt);

        //新增数据库
        try {
            //建立MySQL数据库连接
            druid_connection();
            //在数据库对应的数据表(login_List)查询数据，如果查到就是正确反之错误
            String select = "select * from login_List where user =  ?";
            PreparedStatement st = connection.prepareStatement(select);

            String addSelect = "insert into login_list(user,password) values( ? , ? )";
            PreparedStatement st2 = connection.prepareStatement(addSelect);
            st.setString(1, userName);
            //防sql注入原理：遇到特殊字符自动\转义
            ResultSet set = st.executeQuery();
            if (set.next()) {
                req.setAttribute("message", "该用户名已存在！");
            } else {
                st2.setString(1, userName);
                st2.setString(2, userPwd);
                st2.executeUpdate();
                req.setAttribute("message", "你已经成功注册，将在3秒内跳转至登录界面");
                req.setAttribute("back", true);
            }
            req.getRequestDispatcher("1.4注册界面.jsp").forward(req, resp);
            //释放资源
            st.close();
            st2.close();
            set.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
