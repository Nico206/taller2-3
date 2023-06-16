<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>Inicio de sesion de usuarios. TOOLME</title>
  <meta charset="utf-8">

  <meta name="author" content="Nicolas">

  <meta name="description" content="inicio de sesion">

  <meta name="keywords" content="...">

  <meta name="viewport" content="width=device-witdh, initial.scale=1">

  <link rel="icon" type="image/x-icon" href="img/icon.png">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
        crossorigin="anonymous">

  <link rel="stylesheet" href="css/styleLogin.css">

</head>
<body class="text-center">
<main class="form-signin w-100 m-auto">
  <form action="" method="post">
    <img class="mb-4" src="img/icon.png" alt="Tool me" width="100">
    <h4 class="text-secondary">Tool <me></me></h4>
    <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

    <div class="form-floating">
      <i class="icofont-user-alt-7"></i>
      <input type="text" class="form-control" id="floatingInput"
             placeholder="Ingrese su nombre de usuario" required autofocus
             pattern="[A-Za-z0-9]{8, 12}">
      <label for="floatingInput">Usuario:</label>
    </div> <br>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword"
             placeholder="Ingrese su contraseña" required pattern="[A-a-z0-9]{8, 12}">
      <label for="floatingPassword">Contraseña:</label>
    </div>

    <button class="btn btn-info text-white w-100 mt-7 fw-semibold shadow-sm" type="submit">Ingresar</button>
    <div id="register">
      <a href="register.jsp">Registrarse</a>
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