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

    <link rel="stylesheet" href="css/index.css">
    <title>Catalogo</title>


    <style>
        #scheda:hover { cursor: pointer; }
    </style>

</head>
<body>

<%@include file= "navbar.jsp" %>
<%
    ArrayList<AlberiMonumentaliBean> list =(ArrayList<AlberiMonumentaliBean>) request.getAttribute("arrayAlberi");
%>
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <a name="who"></a>
    <h3 class="margin">Alberi monumentali della regione Campania</h3>
    <img src="img/copertina.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="550" height="550">

</div>
<!-- Second Container -->
<div  class="container-fluid bg-2 text-center" style="padding: 15px;">
    <a name="what"></a>
    <section class="ftco-section ftco-cart">
        <div class="row ">
            <div class="card x">
                <div class="cart-list">

                    <h1>Lista degli alberi monumentali della Campania</h1>
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
                            <th>Scheda</th>
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
                            <td id="scheda"><a href="<%=e.getSchede()%>"><button type="button" class="removeX"><span style="font-size:20px; color: #27ae60;" class="glyphicon glyphicon-zoom-in"></span></button></a></td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </section>
</div>

<%@include file= "footer.jsp" %>

</body>
</html>
