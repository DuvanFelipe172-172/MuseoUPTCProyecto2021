<%-- 
    Document   : Index
    Created on : 16/05/2021, 10:46:26 PM
    Author     : Mike 57320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilosh.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Montserrat:wght@100&display=swap" rel="stylesheet">
        <title>Museo Geologico</title>
    </head>
    <body>
        <header class="header">
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
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=gestionadmin">Administradores</a>
                                <a class="nav-item nav-link" href="ControladorAdmin?accion=home1">Cerrar Sesion</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>

            <div class="text-header d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8">
                            <h2>Museo Geologico</h2><br>
                            <p> UPTC – Facultad Sogamoso – Edificio de Laboratorios - Calle 4 sur No.15-134.
                            <p> Teléfono (7) 770 5450 Ext. 2623
                            <p> Email: museo.ingenieriageologica@uptc.edu.co
                            <p>Horario de atención: Lunes a viernes: 9 am a 12 m y 2 a 5 pm.<br><br>
                            <a href="ControladorAdmin?accion=ficha" class="btn btn-yo"><span>Ejemplares</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>



