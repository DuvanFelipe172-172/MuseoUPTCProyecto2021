<%-- 
    Document   : Autor
    Created on : 16/05/2021, 02:59:27 AM
    Author     : Duvan Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Autor</title>
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
            <header>
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
        <div class="container mt-4">
            
            <h1>Ingresar Autor</h1>

            <div class="card border-info mb-3" style="max-width: 18rem;">
                <div class="card-header">Nuevo Autor</div>
                <div class="card-body">
                    <div class="form-group">

                     
                        
                        

                        <form action="ControllAutor" method="POST">
                            
                            <hr>

                            <div class="form-group">
                                <label>
                                    ID AUTOR
                                </label><br>

                                <input type="text" name="txtid"> <br>   
                            </div>
                            <div class="form-group">
                                <label>
                                    NOMBRE
                                </label>
                                <input type="text" name="txtnombre"> <br>   
                            </div>
                            <div class="form-group">
                                <label>
                                    CARGO
                                </label>
                                <input type="text" name="txtcargo"> <br>  
                            </div>
                            <hr>
                            




                            <input type="submit" name="accion" value="Guardar">
                            <input type="submit" name="accion" value="Listar">
                            <input type="submit" name="accion" value="Nuevo">
                        </form>
                    </div>

                </div>



            </div>
            <div class="cart-footer">


            </div>


        </div>





        

    </center>

</body>
</html>
