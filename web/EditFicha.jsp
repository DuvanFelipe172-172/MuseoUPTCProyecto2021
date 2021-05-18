<%-- 
    Document   : EditFicha
    Created on : 15/05/2021, 11:45:16 PM
    Author     : Duvan Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Ficha</title>
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




        <center>

            <h1>Actualizar Ficha</h1>

            <div class="card border-info mb-3" style="max-width: 18rem;">
                <div class="card-header">Actualizar</div>
                <div class="card-body">


                    <div class="form-group">
                        <form action="ControladorFicha" method="POST">

                            <hr>

                            <div class="form-group">
                                <label>
                                    ID FICHA
                                </label><br>

                                <input type="text" name="txtid" value="${FichaFosil.getId_Ejemplar()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    NOMBRE
                                </label>
                                <input type="text" name="txtnombre" value="${FichaFosil.getId_Nombre()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    FILUM
                                </label>
                                <input type="text" name="txtfilum" value="${administrador.getFilum()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    TAMAÑO
                                </label><br>

                                <input type="text" name="txttamaño" value="${administrador.getTamaño()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    PESO
                                </label><br>

                                <input type="text" name="txtpeso" value="${administrador.getPeso()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    PROCEDENCIA
                                </label><br>

                                <input type="text" name="txtprocedencia" value="${administrador.getProcedencia()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    FECHA INGRESO
                                </label><br>

                                <input type="date" name="txtfechaingreso" value="${administrador.getFechaIngreso()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    EDAD EJEMPLAR
                                </label><br>

                                <input type="text" name="txtedadejemplar" value="${administrador.getEdadEjemplar()}"> <br>
                            </div>
                            <div class="form-group">
                                <label>
                                    AUTOR
                                </label><br>

                                <input type="text" name="txtautor" value="${administrador.getAutor()}"> <br>
                            </div>

                            <hr>








                            <input type="submit" name="accion" value="Listar">
                            <input type="submit" name="accion" value="Nuevo">
                            <input type="submit" name="accion" value="Actualizar">

                        </form>

                    </div>
                    <div class="cart-footer">
                    </div>
                </div>
            </div>

        </center>

    </body>
</html>
