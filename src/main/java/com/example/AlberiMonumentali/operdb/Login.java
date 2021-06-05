package com.example.AlberiMonumentali.operdb;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // This method is called by the servlet container to process a 'post' request
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        handleRequest(req, resp);
    }

    public void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        // Reading post parameters from the request
        String param1 = req.getParameter("login_id"),
                param2 = req.getParameter("login_pwd");


    }
}