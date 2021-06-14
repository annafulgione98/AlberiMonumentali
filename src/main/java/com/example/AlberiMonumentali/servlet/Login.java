package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.bean.UserBean;
import com.example.AlberiMonumentali.operdb.Operation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {

    private static final long serialVersionUID = 1L;


    public Login() {
        super();
    }

    // This method is called by the servlet container to process a 'post' request
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        HttpSession session = req.getSession();
        String  param1 = req.getParameter("uname");
        String param2 = req.getParameter("psw");

        Operation op= new Operation();
        boolean flag= op.isUserDb(param1, param2);

        if(flag){
            session.setAttribute("isAdmin", true);
            resp.setContentType("text/html");
            req.getRequestDispatcher(resp.encodeURL("/homeAdmin.jsp")).forward(req, resp);
        }
        else{
            resp.setContentType("text/html");
            req.getRequestDispatcher(resp.encodeURL("/errorLogin.jsp")).forward(req, resp);
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
        // Reading post parameters from the request
    }

}