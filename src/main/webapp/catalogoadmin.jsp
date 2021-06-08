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
                        <tr id = "<%=e.getId()%>">
                            <td role = "nomeLuogo"><%=e.getName()%> </td>
                            <td role = "provincia"><%=e.getProvincia()%></td>
                            <td role = "localita"><%=e.getLocalita()%></td>
                            <td role = "altitudine"><%=e.getAltitudine()%></td>
                            <td role = "nomes"><%=e.getNomeScientifico()%></td>
                            <td role = "nomev"><%=e.getNomevolgare()%></td>
                            <td role = "altezza"><%=e.getAltezza()%></td>
                            <td><button id ="<%=e.getId()%>" type="submit" class="button button2 submitter">Modifica</button></td>
                            <td><button type="button" class="removeX"><span style="font-size:20px; color: red;" class="glyphicon glyphicon-remove"></span></button></td>
                        </tr>
                        <%}
                            // %>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </section>

</div>

<!--modal per eliminare un albero-->
<div class="modal" id="elimina" tabindex="-1" role="dialog" aria-labelledby="eliminaModalLabel" aria-hidden="true" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="eliminaModalLabel">Attenzione</h4>
            </div>
            <!--body-->
            <div class="modal-body">
                <label>Sei sicuro di voler eliminare l'albero? </label>
            </div>
            <!--footer -->
            <div class="modal-footer">
                <button type="button"  class="btn btn-secondary removeX" data-dismiss="modal" onclick="fRemoveAlberoRiuscito()">Si, elimina</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" >Chiudi</button>
            </div>
        </div>
    </div>
</div>
<div class="alert alert-success alert-dismissible" id="removeAlberoRiuscito">
    <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Perfetto!</strong> Albero rimosso con successo dal sistema.<br>
</div>

<script>

document.getElementById("removeAlberoRiuscito").style.display="none";
function fRemoveAlberoRiuscito(){
    document.getElementById("removeAlberoRiuscito").style.display="block";
}

</script>
<script type="text/javascript" src= "js/controlCatalog.js"></script>
<%@include file= "footer.jsp" %>

</body>
</html>
