package com.shiva;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(false);

        String regEmail = (String) session.getAttribute("regEmail");
        String regPassword = (String) session.getAttribute("regPassword");

        PrintWriter out = response.getWriter();

        if (email.equals(regEmail) && password.equals(regPassword)) {
            out.println("<h2>Login Successful!</h2>");
            out.println("<p>Welcome " + session.getAttribute("regName") + "</p>");
        } else {
            out.println("<h2>Login Failed!</h2>");
            out.println("<p>Invalid email or password</p>");
        }
    }
}
