/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DomainClasses.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NoahFerrier
 */
public class IndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("usrname");
        String password = request.getParameter("psswd");

        username = username.toLowerCase();
        password = password.toLowerCase();

        request.setAttribute("username", username);
        request.setAttribute("password", password);

        userService us = new userService();
        User u = new User(username,password);

        if (username.trim().isEmpty() && password.trim().isEmpty()) {
            request.setAttribute("error1", false);
            getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        } else if (!us.login(username, password)) {
            request.setAttribute("error2", false);
            getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        } else {
            u.setUsername(username);
            u.setPassword(password);
            request.setAttribute("User", u);
            getServletContext().getRequestDispatcher("/WEB-INF/mainPage.jsp").forward(request, response);
        }

    }
}
