<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Aggiungi albero</title>

    <!-- Bootstrap -->
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

    <link hfref="bottone.css" rel="stylesheet">
    <link rel='stylesheet'
          href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
          integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
          crossorigin='anonymous'>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/navbar.css">

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <script>
        if(${composizione == 'true'}){
            alert("Prodotto inserito correttamente");
        };
        if (${errore_composizione == 'true'}){
            alert("Errore durante l'inserimento del prodotto");
        };
    </script>
</head>
<body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validate.js"></script>

<!-- SCRIPT PER I CONTROLLI SULL'INPUT -->
<script>
    jQuery.extend(jQuery.validator.messages, {
        required: "Questo campo è richiesto",
        remote: "C'è un errore in questo campo, controllare.",
        name: "Inserire un valore adatto per il nome.",
        email: "Inserire un indirizzo email valido.",
        url: "Inserire un indirizzo URL valido.",
        date: "Inserire una data valida.",
        dateISO: "Digitare una data valida (ISO).",
        number: "Digitare un numero valido.",
        digits: "Digitare solo caratteri numerici.",
        creditcard: "Digitare un numero valido di carta di credito.",
        equalTo: "I campi password non corrispondono, controllare.",
        accept: "Digitare un valore con una valida estensione.",
        maxlength: $.validator.format("Digitare al massimo {0} caratteri."),
        minlength: $.validator.format("Digitare almeno {0} caratteri."),
        rangelength: $.validator.format("Inserire un valore compreso tra gli {0} ed i {1} caratteri."),
        range: $.validator.format("Digitare un valore compreso tra {0} e {1}."),
        max: $.validator.format("Inserire un valore minore o uguale di {0}."),
        min: $.validator.format("Inserire un valore maggiore o uguale di {0}.")
    });


    $(document).ready(function(){
        $('#accedieregistrati').validate({
            rules: {
                luogo: {
                    minlength: 	6,
                    required: 	true,
                },
                provincia: {
                    minlength: 	6,
                    required: 	true,
                },

                localita: {
                    minlength: 	6,
                    required: 	true,
                },
                altitudine: {
                    required:	true,
                    range: 		[1.000, 99999.000],
                    number: 	true,
                },

                nomeScientifico: {
                    minlength: 	6,
                    required: 	true,
                },
                nomeVolgare: {
                    required: 	true,
                    minlength: 	10,
                },
                altezza: {
                    required:	true,
                    range: 		[1.000, 99999.000],
                    number: 	true,
                },
                scheda: {
                    required: 	true,
                    url: 		true,
                },

            },
            highlight: function(element) {
                $(element).closest('.control-group').removeClass('success').addClass('error');
            },
            success: function(element) {
                element
                    .text('OK!').addClass('valid')
                    .closest('.control-group').removeClass('error').addClass('success');
            }
        });

    }); // end document.ready
</script>

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
            <input type="text" class="form-control" name="provincia"
                   placeholder="Provincia">
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
