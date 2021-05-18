<%-- 
    Document   : Ficha
    Created on : 15/05/2021, 11:52:44 PM
    Author     : Duvan Felipe & 57320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ficha Ejemplar</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilosh.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Montserrat:wght@100&display=swap" rel="stylesheet">

    </head>
    <body class="header">


    <center>
        <header >
            <div class="bg-dark">
                <div class="container">
                    <nav class="navbar navbar-expand-lg navbar-light">

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class=" navg navbar-nav w-100 justify-content-center">
                                <a class="nav-item nav-link active" href="ControladorAdmin?accion=home1">Inicio</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=ficha1">Ficha ejemplar</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=autor1">Autores</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=admin">Administradores</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <br><br><br><br>




        <center>
            <div class="container mt-4">
                <h1>Lista Ficha Ejemplar</h1> 
                <form action="ControladorFicha" method="POST">
                    <input class="btn btn-dark" type="submit" name="accion" value="Listar">

                </form>
            </div>
            <div class="container mt-4">
                <table border="1" class="table table-dark table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE</th>
                            <th>FILUM</th>
                            <th>TAMAÑO</th>
                            <th>PESO</th>
                            <th>PROCEDENCIA</th>
                            <th>FECHA INGRESO</th>
                            <th>EDAD EJEMPLAR</th>
                            <th>AUTOR</th>
                        </tr>
                    </thead>  
                    <tbody>
                        <c:forEach var="dato" items="${datos}">
                            <tr>
                                <td>${dato.getId_Ejemplar()}</td>
                                <td>${dato.getNombre()}</td>
                                <td>${dato.getFilum()}</td>
                                <td>${dato.getTamaño()}</td>

                                <td>${dato.getPeso()}</td>
                                <td>${dato.getProcedencia()}</td>
                                <td>${dato.getFechaIngreso()}</td>
                                <td>${dato.getEdadEjemplar()}</td>
                                <td>${dato.getAutor()}</td>


                                <td>
                                    <form action="ControladorFicha" method="POST">
                                        <input type="hidden" name="id" value="${dato.getId()}">
                                       
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </center>

    </body>
</html>
