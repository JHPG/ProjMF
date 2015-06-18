<%-- 
--%>
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

        <title>MultiForm | Cadastro</title>
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
        
        <%  try{
                String ok = (String) request.getAttribute("ok");    //Queria usar boolean, n consegui
                if(ok == "transferido"){ %>
                    <script> alert("O paciente foi tranferido com sucesso!"); </script>
                <% }
            } catch(Exception ex){}
        %>
        
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
            <h2>Transferência de paciente</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Transferência</div>
                <div class="panel-body">
                <!--Opcional: adicionar restricao apenas letras e numero-->    
                    <form class="form-horizontal" role="form" style="" method="POST" action="FrontController">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nome" class="col-sm-1 control-label" title="Nome" style=""></label>
                                    <div class="col-sm-12">
                                        <p>Digite o código do paciente a ser tranferido:</p>
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon1">Código</span>
                                            <input id="nome" name="cod" type="text" class="form-control" aria-describedby="basic-addon1"  />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <p>Digite o nome da instituição que o paciente será tranferido:</p>
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon2">Nova Instituicao:</span>
                                            <input id="NovaInstituicao" name="novaInstituicao" type="text" class="form-control" aria-describedby="basic-addon2"  />
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="margin:5% auto">
                            <input type="hidden" name="acao" value="transferirPaciente" class="btn btn-primary"> 
                            <a href="index.html"><input type="button" value="Voltar" class="btn btn-default" onclick="window.history.back()"></a>
                            <input type="submit" class="btn btn-primary" value="Confirmar">
                        </div>
                    </form>
                </div>
                </div> 
            </div>
            <!--<hr>-->
            <footer>
                <center>&copy; MultiForm 2015 </center>
            </footer>
        </div>

        <script src="dist/js/jquery.min.js"></script>
        <script src="dist/js/bootstrap.min.js"></script>
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
        <!--reference: http://jsfiddle.net/zb4dc/2/-->
    </body>
</html>
