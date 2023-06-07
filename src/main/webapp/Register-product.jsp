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
            <form action="registerProduct" method="POST">
                <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
                <h4 class="text-secondary">MY -APP</h4>
                <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

                <div class="form-floating">
                    <input name="product_name" type="text" class="form-control" id="floatingInput" placeholder="Ingresa nombre de producto" autofocus required pattern="{A-Z a-z}{8,12}"><br>
                    <label for="floatingInput">Nombre:</label>
                </div>

                <div class="form-floating">
                    <input name="product_value" type="text" class="form-control" id="floatingLastname" placeholder="Ingresa valor de producto" required pattern="{A-Z a-z}{8,12}"><br>
                    <label for="floatingLastname">Valor:</label>
                </div>

                <div class="form-floating">
                    <input name="category_id" type="number" class="form-control" id="floatingCate_id" placeholder="Ingresa numero de la categoria del producto" required pattern="{A-Z a-z}{8,12}{\d+}"><br>
                    <label for="floatingCate_id">Categoria:</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Registrar</button>
                <div id="register">
                    <a href="index">Volver a login</a>

                </div>

            </form>
        </main>
    </section>
<%@include file="footer.jsp"%>
