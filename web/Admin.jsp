<%-- 
    Document   : Admin
    Created on : 14/05/2021, 05:00:27 PM
    Author     : 57320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Administradores</title>
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
                                <a class="nav-item nav-link active" href="ControladorAdmin?accion=home">Inicio</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=ficha">Ficha ejemplar</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=autor">Autores</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=admin">Administradores</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <br><br><br><br>




       
            <div class="container mt-4">
                <h1>Lista Administradores</h1> 
                <form action="ControladorAdmin" method="POST">
                    <input class="btn btn-dark" type="submit" name="accion" value="Listar">
                    <input class="btn btn-dark" type="submit" name="accion" value="Nuevo">

                </form>
            </div>
            <div class="container mt-4">
                <table border="1" class="table table-dark table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRES</th>
                            <th>APELLIDOS</th>
                            <th>CORREO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>  
                    <tbody>
                        <c:forEach var="dato" items="${datos}">
                            <tr>
                                <td>${dato.getId()}</td>
                                <td>${dato.getNombre()}</td>
                                <td>${dato.getApellido()}</td>
                                <td>${dato.getEmail()}</td>
                                <td>
                                    <form action="ControladorAdmin" method="POST">
                                        <input class="btn btn-outline-primary ml-2" type="hidden" name="idAdmin" value="${dato.getId()}">
                                        <input class="btn btn-outline-primary ml-2" type="submit" name="accion" value="Editar">
                                        <input class="btn btn-outline-primary ml-2" type="submit" name="accion" value="Borrar">
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
