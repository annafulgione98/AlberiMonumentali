<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="css/logincss.css">

</head>
<body>

<%@include file= "navbar.jsp" %>

<h2>Bentornato</h2>

<form action="/action_page.php" method="post">
    <div class="imgcontainer">
        <img src="img/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div id="form" class="container">
        <%--@declare id="uname"--%>
        <%--@declare id="psw"--%>
        <label  for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label  for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <button type="submit">Login</button>

    </div>


</form>

<%@include file= "footer.jsp" %>

</body>
</html>

