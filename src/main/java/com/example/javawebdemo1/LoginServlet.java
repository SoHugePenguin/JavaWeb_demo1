package com.example.javawebdemo1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
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
            req.getRequestDispatcher("1.4简易用户登录界面_login.jsp").forward(req, resp);
            return;
        }
        if (userPwd == null || "".equals(userPwd.trim())) {
            //跳转服务器
            req.setAttribute("message", "密码不能为空");
            req.getRequestDispatcher("1.4简易用户登录界面_login.jsp").forward(req, resp);
            return;
        }

        //校对账号密码
        if ("qwq".equals(userName) && "123456".equals(userPwd)) {
            //send服务器前往登录成功界面
            req.getSession().setAttribute("userName", userName);
            resp.sendRedirect("1.4_success.jsp");
        } else {
            req.setAttribute("message", "用户名或密码有误！");
            req.getRequestDispatcher("1.4简易用户登录界面_login.jsp").forward(req, resp);
        }

    }
}