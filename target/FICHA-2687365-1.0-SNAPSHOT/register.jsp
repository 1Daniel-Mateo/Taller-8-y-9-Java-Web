<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="head.jsp"%>

<body class="text-center">
<div class="container">

    <header>
    </header>
    <nav>
    </nav>

    <!--register form-->
    <section>
        <main class="form-signin w-100 m-auto">
            <form action="registerUser" method="post">
                <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
                <h4 class="text-secondary">MY -APP</h4>
                <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

                <div class="form-floating">
                    <input name="user_firstname" type="text" class="form-control" id="floatingInput" placeholder="Ingresa tu nombre" autofocus required pattern="[A-Za-z\s].{3,12}"><br>
                    <label for="floatingInput">Nombre:</label>
                </div>

                <div class="form-floating">
                    <input name="user_lastname" type="text" class="form-control" id="floatingLastname" placeholder="Ingresa tu apellido" required pattern="[A-Za-z\s].{4,12}"><br>
                    <label for="floatingLastname">Apellido:</label>
                </div>

                <div class="form-floating">
                    <input name="user_email" type="email" class="form-control" id="floatingEmail" placeholder="Ingresa tu correo" required pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z].{1,60}"><br>
                    <label for="floatingEmail">Correo:</label>
                </div>

                <div class="form-floating">
                    <input  name="user_password" type="password" class="form-control" id="floatingPassword" placeholder="Ingresa tu contraseña" required pattern=".{8,15}"><br>
                    <label for="floatingPassword">Contraseña:</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Registrate</button>
                <div id="register">
                    <a href="index">Volver a login</a>
                </div>
            </form>
        </main>
    </section>
<%@include file="footer.jsp"%>







