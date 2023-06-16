<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: WINDOWS10
  Date: 27/04/2023
  Time: 10:37 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro de usuarios</title>

    <meta name="viewport" content="width=device-witdh, initial.scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/styleRegis.css">


</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
        <img class="mb-4" src="img/user.png" alt="Tool me" width="100">
        <h4 class="text-secondary">Bienvenido a Tool <me></me></h4>
        <h1 class="h5 mb-3 fw-normal">Pagina de Registro.</h1>
        <h0 class="h5 mb-3 fw-normal" >por favor rellena los siguientes datos para poder tener una cuenta con nosotros</h0>
        <br><br>

        <div class="form-floating">
            <input type="text" class="form-control" id="floatingUser"
                   placeholder="Ingrese su nombre de usuario" required autofocus
                   pattern="[A-Za-z0-9]{8, 12}">
            <label for="floatingPassword">Nombre de Usuario:</label>

        </div> <br>
        <div class="form-floating">
            <input type="text" class="form-control" id="floatingSecondUser"
                   placeholder="Ingrese su apellido" required
                   pattern="[A-Za-z0-9]{8, 12}">
            <label for="floatingPassword">Apellido: </label>

        </div> <br>
        <div class="form-floating">
            <input type="email" class="form-control" id="floatingEmail"
                   placeholder="Ingrese su correo" required
                   pattern="[A-Za-z0-9]{8, 12}">
            <label for="floatingPassword">Email</label>

        </div> <br>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword"
                   placeholder="Ingrese su contraseña" required pattern="[A-a-z0-9]{8, 12}">
            <label for="floatingPassword">Crea una Contraseña:</label>
        </div> <br>

        <button class="btn btn-info text-white w-100 mt-7 fw-semibold shadow-sm" type="submit">registrarse</button> <br>
        <div id="register">
            <a href="index.jsp">inicia sesion</a>
        </div>
        <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados TOOL ME © <%=displayDate()%>
        </p>

    </form>
</main>

<%!
    public String displayDate(){
        SimpleDateFormat dateformat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return  dateformat.format(date);
    }
%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
</html>
