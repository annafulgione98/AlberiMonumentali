
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="homeAdmin.jsp">HOME</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">ALBERO
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="ServletCatalogAdmin?provincia=a">Avellino</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=b">Benevento</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=c">Caserta</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=n">Napoli</a></li>
                        <li><a href="ServletCatalogAdmin?provincia=s">Salerno</a></li>
                    </ul>
                </li>
                <li><a href="Inserisci-Prodotto.jsp">INSERISCI ALBERO</a></li>
                <li> <a href="Logout" class="btn">
                        <span class="glyphicon glyphicon-log-out"></span> LOG-OUT
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>


