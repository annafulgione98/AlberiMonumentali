package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.operdb.Operation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletCatalogAdmin", value = "/ServletCatalogAdmin")
public class ServletCatalogAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
        ArrayList<AlberiMonumentaliBean> arrayAlberi ;
        Operation op= new Operation();
        System.out.println("CI ARRIVO in Servlet catalogAdmin");
        if(isAdmin == null ? false : isAdmin.booleanValue())
        {
            try {
                arrayAlberi = op.retrieve();
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
            response.setContentType("text/html");
            request.setAttribute("arrayAlberi", arrayAlberi);
            System.out.println("CI ARRIVO in if");
            request.getRequestDispatcher(response.encodeURL("/catalogoadmin.jsp")).forward(request, response);
        }
        else{
            System.out.println("CI ARRIVO ma in else");
            response.sendRedirect("login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
