package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.bean.Paginator;
import com.example.AlberiMonumentali.operdb.Operation;
import com.google.gson.GsonBuilder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ServletCatalog", value = "/ServletCatalog")
public class ServletCatalog extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected String URL;
    protected int numEl = 40;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<AlberiMonumentaliBean> arrayAlberi;
        ArrayList<AlberiMonumentaliBean>  myArrayProvincia= new ArrayList<AlberiMonumentaliBean>();
       Operation op = new Operation();

        try {
            arrayAlberi = op.retrieve();
            String provincia= request.getParameter("provincia");
            if(provincia.equals("a")){
                for(int i=0;i<arrayAlberi.size();i++){
                    if(arrayAlberi.get(i).getProvincia().equals("Avellino")){
                        myArrayProvincia.add(arrayAlberi.get(i));
                    }
                }
            }
            if(provincia.equals("b")){
                for(int i=0;i<arrayAlberi.size();i++){
                    if(arrayAlberi.get(i).getProvincia().equals("Benevento")){
                        myArrayProvincia.add(arrayAlberi.get(i));
                    }
                }
            }
            if(provincia.equals("c")){
                for(int i=0;i<arrayAlberi.size();i++){
                    if(arrayAlberi.get(i).getProvincia().equals("Caserta")){
                        myArrayProvincia.add(arrayAlberi.get(i));
                    }
                }
            }
            if(provincia.equals("n")){
                for(int i=0;i<arrayAlberi.size();i++){
                    if(arrayAlberi.get(i).getProvincia().equals("Napoli")){
                        myArrayProvincia.add(arrayAlberi.get(i));
                    }
                }
            }
            if(provincia.equals("s")){
                for(int i=0;i<arrayAlberi.size();i++){
                    if(arrayAlberi.get(i).getProvincia().equals("Salerno")){
                        myArrayProvincia.add(arrayAlberi.get(i));
                    }
                }
            }
        } catch (Exception e) {
            // response.sendRedirect(response.encodeURL("error.jsp"));
            e.printStackTrace();
            return;
        }
        response.setContentType("text/html");
        request.setAttribute("arrayAlberi", myArrayProvincia);
        request.getRequestDispatcher(response.encodeURL("/catalogo.jsp")).forward(request, response);

}


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
