<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aggiungi albero</title>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/index.css">

</head>
<body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>



<%@include file= "navbarAdmin.jsp" %>
<!-- HEADER -->
<h3 style="text-align: center ">Bentornato, inserisci qui il nuovo albero monumentale.</h3>


<!-- FORM PER L'INSERIMENTO DEI DATI PER L'INSERIMENTO DI UN NUOVO PRODOTTO -->
<form  action="ServletAddAlbero" id="accedieregistrati" method="post"
      class="form-horizontal">

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Luogo</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name"
                   placeholder="Luogo">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Provincia</label>
        <div class="col-sm-10">
            <select class="form-control" name="provincia" id="sel1">
                <option>Avellino</option>
                <option>Benevento</option>
                <option>Caserta</option>
                <option>Napoili</option>
                <option>Salerno</option>

            </select>
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Località</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="localita"
                   placeholder="Localita'">
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="comment"--%><label for="comment" class="col-sm-2 control-label">Altitudine</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="altitudine"
                   placeholder="Altitudine">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Nome Scientifico</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="nomeScientifico"
                   placeholder="Nome Scientifico">
        </div>
    </div>


    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Nome Volgare</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="nomeVolgare"
                   placeholder="Nome Volgare">
        </div>
    </div>

    <div class="form-group">
        <label for="comment" class="col-sm-2 control-label">Altezza</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="altezza"
                   placeholder="Altezza">
        </div>
    </div>

    <div class="form-group">
        <%--@declare id="nome"--%><label for="nome" class="col-sm-2 control-label">Scheda</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="scheda"
                   placeholder="Scheda">
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10"></div>
    </div>

    <div style="text-align: center" class="form-actions">
        <button type="submit" class="btn btn-success btn-large addAlbero">Inserisci albero</button>
        <button type="reset" class="btn">Annulla</button>

        <div class="col-sm-offset-2 col-sm-10"></div>
        <div class="col-sm-offset-2 col-sm-10"></div>

    </div>

</form>

</body>

</html>
