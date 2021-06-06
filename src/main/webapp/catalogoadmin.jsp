<%@ page import="com.example.AlberiMonumentali.bean.AlberiMonumentaliBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index.css">

    <title>Catalogo Admin</title>
</head>
<body>

<%@include file= "navbarAdmin.jsp" %>
<%
    ArrayList<AlberiMonumentaliBean> list =(ArrayList<AlberiMonumentaliBean>) request.getAttribute("arrayAlberi");
%>
<!-- Second Container -->
<div  class="container-fluid bg-2 text-center">
    <section class="ftco-section ftco-cart">
        <div class="row ">
            <div class="card x">
                <div class="cart-list">
                    <h1>Gli alberi monumentali della Campania</h1>
                    <table class="table">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>Luogo</th>
                            <th>Provincia</th>
                            <th>Localit&#224;</th>
                            <th>Altitudine</th>
                            <th>Nome scientifico</th>
                            <th>Nome volgare</th>
                            <th>Altezza</th>
                            <th>Modifica</th>
                            <th>Elimina</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            for (AlberiMonumentaliBean e : list) { %>
                        <tr>
                            <td><%=e.getName()%></td>
                            <td><%=e.getProvincia()%></td>
                            <td><%=e.getLocalita()%></td>
                            <td><%=e.getAltitudine()%></td>
                            <td><%=e.getNomeScientifico()%></td>
                            <td><%=e.getNomevolgare()%></td>
                            <td><%=e.getAltezza()%></td>
                            <td><span style="font-size:20px;" class="glyphicon glyphicon-pencil"></span></td>
                            <td><span style="font-size:20px; color: red;" class="glyphicon glyphicon-remove"></span></td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>

                    <p style = "text-align: center">pg <input class = "pageof" type = "number" value = "1" min="1" max="<%= request.getAttribute("maxPg") %>"> of <%= request.getAttribute("maxPg") %> <button id = "submit">Invia</button></p>
                </div>
            </div>
        </div>
    </section>

</div>

<%@include file= "footer.jsp" %>

</body>
</html>
