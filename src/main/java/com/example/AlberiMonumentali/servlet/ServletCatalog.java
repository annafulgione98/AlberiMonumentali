package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.bean.Paginator;
import com.example.AlberiMonumentali.operdb.Operation;
import com.google.gson.GsonBuilder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletCatalog", value = "/ServletCatalog")
public class ServletCatalog extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected String URL;
    protected int numEl= 40;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<AlberiMonumentaliBean> arrayAlberi ;
       // String pg = request.getParameter("pg");
       // int pgNumber = pg == null || "".equals(pg) ? 1 : Integer.parseInt(pg);

        Operation op= new Operation();

        try {
            arrayAlberi = op.retrieve();


          //  Paginator<AlberiMonumentaliBean> pager = new Paginator<AlberiMonumentaliBean>(numEl, pgNumber);
           // Paginator<AlberiMonumentaliBean>.Pair obj = pager.paginate(arrayAlberi);
          //  arrayAlberi = (ArrayList<AlberiMonumentaliBean>) obj.pagedList;
          //  request.setAttribute("maxPg", obj.maxPg);
        } catch (Exception e) {
           // response.sendRedirect(response.encodeURL("error.jsp"));
            e.printStackTrace();
            return;
        }
        response.setContentType("text/html");
        request.setAttribute("arrayAlberi", arrayAlberi);
        request.getRequestDispatcher(response.encodeURL("/catalogo.jsp")).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
