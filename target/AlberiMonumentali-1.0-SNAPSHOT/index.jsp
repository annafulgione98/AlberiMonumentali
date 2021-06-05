<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Alberi Monumentali</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/indexcss.css">

</head>
<body>

<%@include file= "navbar.jsp" %>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <a name="who"></a>
    <h3 class="margin">Alberi monumentali della regione Campania</h3>
    <img src="img/copertina.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="550" height="550">
    <p style="color: white">Gli alberi monumentali sono soggetti vegetali
        di particolare valore paesaggistico, naturalistico, monumentale,
        storico e culturale, in genere ufficialmente repertoriati per alcune loro particolarita'.
        In territorio campano e' caratterizzato da circa 134 alberi monumentali.
    </p>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center ">
    <a name="caratteristiche"></a>
    <h2>CARATTERISTICHE</h2>
    <br>
    <div class="row slideanim">
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-list-alt logo-small"></span>
            <h4>DIMENSIONI</h4>
            <p>La pianta deve avere dimensioni molto grandi
                per la specie oppure maggiori rispetto agli altri
                individui della stessa specie presenti nell'area esaminata.</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-tree-deciduous logo-small"></span>
            <h4>LONGEVITA'</h4>
            <p>In qualche caso, piante vecchissime possono non raggiungere
                dimensioni eccezionali; se si riesce a sapere o capire
                che una pianta e' molto longeva, essa va considerata monumentale.</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-info-sign logo-small"></span>
            <h4>REQUISITI STORICI</h4>
            <p>Sono da considerare monumentali tutte le piante legate ad un
                evento storico rilevante.</p>
        </div>
    </div>
    <br><br>
    <div class="row slideanim">
        <div class="col-sm-4 ">
            <span class="glyphicon glyphicon-leaf logo-small"></span>
            <h4>RARITA'</h4>
            <p>Una pianta, o un gruppo di piante, molto rare in generale oppure in un certo territorio,
                hanno un grande valore biologico.</p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-picture logo-small"></span>
            <h4>REQUISITI PAESAGGISTICI E ARCHITETTONICI</h4>
            <p>Sono interessanti tutte le piante che hanno rilievo nel
                paesaggio e nelle aree importanti sotto il profilo storico
                e architettonico; anche complessi di piante, che prese singolarmente
                non sarebbero molto interessanti, possono avere valore monumentale. </p>
        </div>
        <div class="col-sm-4">
            <span class="glyphicon glyphicon-grain logo-small"></span>
            <h4>VALORE ECOLOGICO</h4>
            <p>Fa riferimento alle presenze faunistiche
                e vegetali che si insediano al suo interno e nelle sue immediate vicinanze, da considerarsi
                importanti e meritevoli di tutela quanto piu' sono rare, in pericolo di estinzione e per
                questo motivo considerate di interesse comunitario.</p>
        </div>
    </div>
</div>


<%@include file= "footer.jsp" %>

</body>
</html>