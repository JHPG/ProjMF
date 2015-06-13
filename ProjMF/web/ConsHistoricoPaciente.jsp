<%-- 
--%>
<%@page import="DAO.*"%>
<%@page import="Model.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- must be the three first things -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>MultiForm | Consulta</title>
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="jumbotron.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">

        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <script src="assets/js/ie-emulation-modes-warning.js"></script>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            function sucesso() {
                alert("");
            }
        </script>
    </head>

    <body >
        <%
            //PacienteDAO dao = new PacienteDAO();
            
            //Vai vir do controller
            List<Paciente> listaPacientes = (ArrayList) request.getAttribute("listaPacientes");
            //Completar esse trecho depois
        %>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">MultiForm</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <!-- <form class="navbar-form navbar-right">
                          <div class="form-group">
                              <input type="text" placeholder="Usuario" class="form-control">
                          </div>
                          <div class="form-group">
                              <input type="password" placeholder="Senha" class="form-control">
                          </div>
                          <button type="submit" class="btn btn-success">Entrar</button>
                      </form> -->
                    <h4 class="navbar-form navbar-right" style="color:#eee">Bem vindo usuário</h4>
                </div><!--/.navbar-collapse -->
        </nav>

        <div class="jumbotron">
            <div class="container">
                <div style="margin:0 auto;">
                    <h1>MultiForm</h1>
                </div>
                <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">more &raquo;</a></p>-->
            </div>
        </div>

        <div class="container">
            <h2>Consulta Histórico Paciente</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Consulta</div>
                <div class="panel-body">
                    <!--Opcional: adicionar restricao apenas letras e numero-->    
                    <form class="form-horizontal" role="form" style="" method="POST" action="FrontController">
                        <div class="row">

                            <div class="col-md-6">

                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span id="basic-addon2">Digite o nome do Paciente:</span>
                                        </div>    
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="NovaInstituicao" class="col-sm-1 control-label" title="NovaInstituicao"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group">
                                            <input type="text" name="nomePac" placeholder="Digite um nome" class="form-control">
                                            <input type="hidden" name="acao" value="consHistPaciente">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" type="submit">Ir</button>
                                            </span>
                                        </div>   
                                    </div>    
                                </div>
                            </div>
                        </div>

                        <a href="index.html"><input type="button" value="Voltar" class="btn btn-default"></a>
                    </form>
                </div>
            </div>
            </div> 
        
        <!--<hr>-->
        <footer>
            <p>&copy; MultiForm 2015 </p>
        </footer>
    </div>

    <script src="dist/js/jquery.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <!--reference: http://jsfiddle.net/zb4dc/2/-->
</body>
</html>
