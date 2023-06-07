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
            <form action="registerCategory" method="POST">
                <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
                <h4 class="text-secondary">MY -APP</h4>
                <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

                <div class="form-floating">
                    <input name="category_name" type="text" class="form-control" id="floatingInput" placeholder="Ingresa nombre de nueva categoria"  required pattern="[A-Za-z]{4,}"><br>
                    <label for="floatingInput">Nombre de categoría:</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Registrate</button>
                <div id="register">
                    <a href="index">Volver a login</a>

                </div>

            </form>
        </main>
    </section>
<%@include file="footer.jsp"%>