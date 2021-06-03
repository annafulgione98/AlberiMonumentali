<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Bootstrap Theme Simply Me</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            font: 20px Montserrat, sans-serif;
            line-height: 1.8;
            color: #f5f6f7;
        }

        .margin {margin-bottom: 45px;}
        .bg-1 {
            background-color: #27ae60; /* Green */
            color: #ffffff;
        }
        .bg-2 {
            background-color: #bdc3c7; /* Dark Blue */
            color: #ffffff;
        }
        .bg-3 {
            background-color: #ffffff; /* White */
            color: #555555;
        }
        .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
        }
        .container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
        }
        .navbar {
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 12px;
            letter-spacing: 5px;
        }
        .navbar-nav  li a:hover {
            color: #27ae60 !important;
        }
        .logo-small {
            color: #27ae60;
            font-size: 50px;
        }
        h2 {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4 {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        p {
            font-size: 15px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">HOME</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#who">WHO</a></li>
                <li><a href="#what">WHAT</a></li>
                <li><a href="#where">WHERE</a></li>
                <li><a href="#why">WHY</a></li>
                <li><a href="#">LOGIN</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <a name="who"></a>
    <h3 class="margin">Who Am I?</h3>
    <img src="img/copertina.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="copertina" width="550" height="550">
    <h3>I'm an adventurer</h3>
</div>

<!-- Second Container -->
<div  class="container-fluid bg-2 text-center">
    <a name="what"></a>
    <h3 class="margin">What Am I?</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
    <a  href="#" class="btn btn-default btn-lg">
        <span class="glyphicon glyphicon-search"></span> Search
    </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">
    <a name="where"></a>
    <h3 class="margin">Where To Find Me?</h3><br>
    <div class="row">
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <img src="img/pianta1.jpeg" class="img-responsive margin" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <img src="img/birds2.jpeg" class="img-responsive margin" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-4">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidi
                dunt ut labore et dolore magna aliqua.</p>
            <img src="img/birds3.jpeg" class="img-responsive margin" style="width:100%" alt="Image">
        </div>
    </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center ">
    <a name="why"></a>
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


<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
    <p style="color: white">Piante monumentali presenti sul territorio campano</p>

</footer>

</body>
</html>