package com.example.AlberiMonumentali.servlet;

import com.example.AlberiMonumentali.bean.AlberiMonumentaliBean;
import com.example.AlberiMonumentali.operdb.Operation;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.bson.types.ObjectId;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletControlAdmin", value = "/ServletControlAdmin")
public class ServletControlAdmin extends HttpServlet {
    private static final long serialVersionUID = 1000L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
       String action = request.getParameter("act");
       Operation op= new Operation();

        try {
            if (action != null && (isAdmin == null ? false : isAdmin))
            {
                 if (action.equalsIgnoreCase("delete")) {
                    ObjectId id = new ObjectId(request.getParameter("id"));
                    op.remove(id);
                } else if (action.equalsIgnoreCase("modify")) {
                     ObjectId id = new ObjectId(request.getParameter("id"));
                    Double altezza=Double.parseDouble(request.getParameter("altezza"));
                    op.update(id,altezza);

                    if (request.getHeader("x-requested-with")!= null){
                        response.setContentType("application/json");
                        JsonObject obj = new JsonObject ();
                        obj.addProperty("newAltezza", altezza);
                        System.out.println(obj);
                        response.getWriter().write(new Gson().toJson(obj));
                    }
                }
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
