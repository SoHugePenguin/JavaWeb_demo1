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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
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
            req.getRequestDispatcher("1.4login.jsp").forward(req, resp);
            return;
        }
        if (userPwd == null || "".equals(userPwd.trim())) {
            //跳转服务器
            req.setAttribute("message", "密码不能为空");
            req.getRequestDispatcher("1.4login.jsp").forward(req, resp);
            return;
        }

        //MD5加密+加盐二次加密
        userPwd = md5.transform(userPwd, salt);

        //校对账号密码
        try {
            //建立MySQL数据库连接
            druid_connection();
            //在数据库对应的数据表(login_List)查询数据，如果查到就是正确反之错误
            String select = "select * from login_List where user =  ? and password = ?";
            PreparedStatement st = connection.prepareStatement(select);
            st.setString(1, userName);
            st.setString(2, userPwd);
            //防sql注入原理：遇到特殊字符自动\转义
            ResultSet set = st.executeQuery();
            if (set.next()) {
                //send服务器前往登录成功界面
                req.getSession().setAttribute("userName", userName);
                resp.sendRedirect("1.4_success.jsp");
            } else {
                req.setAttribute("message", "用户名或密码有误！");
                req.getRequestDispatcher("1.4login.jsp").forward(req, resp);
            }
            //释放资源
            set.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}