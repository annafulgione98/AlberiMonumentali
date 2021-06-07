package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.operdb.Operation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAddAlbero", value = "/ServletAddAlbero")
public class ServletAddAlbero extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
        Operation op= new Operation();
        try {
            if (isAdmin == null ? false : isAdmin) {
                op.insert(request.getParameter("name"), request.getParameter("provincia"), request.getParameter("localita"), Double.parseDouble(request.getParameter("altitudine")), request.getParameter("nomeScientifico"), request.getParameter("nomeVolgare"), Double.parseDouble(request.getParameter("altezza")), request.getParameter("scheda"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        request.getRequestDispatcher(response.encodeURL("/addok.jsp")).forward(request, response);
        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
