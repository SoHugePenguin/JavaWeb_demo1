package com.example.javawebdemo1;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//Jsp的本质是serverLet,说白了就是封装完给我们方便使用，Jsp方便我们排版HTML。
@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}