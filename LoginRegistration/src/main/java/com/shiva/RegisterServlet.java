package com.shiva;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Store details temporarily in session
        HttpSession session = request.getSession();
        session.setAttribute("regName", name);
        session.setAttribute("regEmail", email);
        session.setAttribute("regPassword", password);

        PrintWriter out = response.getWriter();
        out.println("<h2>Registration Successful!</h2>");
        out.println("<p>You can now <a href='login.html'>Login</a></p>");
    }
}
