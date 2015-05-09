<%-- 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>MultiForm</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="jumbotron.css" rel="stylesheet">

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="assets/js/ie-emulation-modes-warning.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </form>
                </div><!--/.navbar-collapse -->
            </div>
        </nav>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <div class="container">
                <h1>MultiForm</h1>
                <p></p>
                <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>-->
            </div>
        </div>

        <div class="container">
            <h1>Cadastro</h1><br />
            <h3>Informações Pessoais</h3><br />
            <form class="form-inline" role="form" style="border:1px solid #000;">

                <div class="form-group">
                    <div class="col-sm-6">    
                        <label for="Nome" class="col-sm-2 control-label">Nome</label>
                        <input type="text" class="form-control" id="nome" placeholder="Nome">
                    </div>


                    <div class="col-sm-6">   
                        <label for="CPF" class="col-sm-2 control-label">CPF</label>
                        <input type="text" class="form-control" id="CPF" placeholder="CPF">
                    </div>


                    <div class="col-sm-6"> 
                        <label for="CNPJ" class="col-sm-2 control-label">CNPJ</label>
                        <input type="text" class="form-control" id="CNPJ" placeholder="CNPJ">
                    </div>


                    <div class="col-sm-6"> 
                        <label for="RG" class="col-sm-2 control-label">RG</label>
                        <input type="text" class="form-control" id="RG" placeholder="RG">
                    </div>


                    <div class="col-sm-6"> 
                        <label for="Genero" class="col-sm-2 control-label">Genero</label>
                        <input type="text" class="form-control" id="Genero" placeholder="Genero">
                    </div>


                    <div class="col-sm-10"> 
                        <label for="Estado Civil" class="col-sm-2 control-label">Estado Civil</label>
                        <input type="text" class="form-control" id="Estado_Civil" placeholder="Estado Civil">
                    </div>


                    <div class="col-sm-9"> 
                        <label for="Nome da mãe" class="col-sm-2 control-label">Nome da mãe</label>
                        <input type="text" class="form-control" id="Nome_Mae" placeholder="Nome da mãe">
                    </div>


                    <div class="col-sm-9"> 
                        <label for="Nome do pai" class="col-sm-2 control-label">Nome do pai</label>
                        <input type="text" class="form-control" id="Nome_Mae" placeholder="Nome do pai">
                    </div>
                </div>

                <!--<input type="text" class="form-control" placeholder="Nome do pai">
                <input type="text" class="form-control" placeholder="Cor de pele"><br /><br />
                <input type="text" class="form-control" placeholder="Data de nascimento">
                <input type="text" class="form-control" placeholder="UF de origem"><br /><br />
                <input type="text" class="form-control" placeholder="Naturalidade">
                <input type="text" class="form-control" placeholder="Logradouro"><br /><br />
                <input type="text" class="form-control" placeholder="Número">	
                <input type="text" class="form-control" placeholder="Complemento"><br /><br />-->	
                <button type="submit" class="btn btn-default">Submit</button>

            </form>

            <!--<hr>-->

            <!--<footer>
              <p>&copy; Company 2014</p>
            </footer>-->
        </div> <!-- /container -->


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>
