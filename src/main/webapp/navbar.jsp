
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navbar</title>
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
            <a class="navbar-brand" href="index.jsp">HOME</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">CHI SIAMO</a></li>
                <li><a href="ServletCatalog">CATALOGO</a></li>
                <li><a href="index.jsp#caratteristiche">CARATTERISTICHE</a></li>
                <li><a href="login.jsp">LOGIN</a></li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>
