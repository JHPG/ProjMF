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
        <script>
            function sucesso() {
                alert("Dados cadastrados com sucesso!");
            }
        </script>
    </head>

    <body >

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
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
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
            <h2>Cadastro Instituição</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Cadastro</div>
                <div class="panel-body">
                    <!--Opcional: adicionar restricao apenas letras e numero-->    
                    <form class="form-horizontal" role="form" style="" method="POST" action="FrontController">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nome" class="col-sm-1 control-label" title="Nome" style=""></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">

                                            <span class="input-group-addon" id="basic-addon1">Nome</span>

                                            <input id="nome" name="nome" type="text" class="form-control" aria-describedby="basic-addon1"  />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="razao_social" class="col-sm-1 control-label" title="razao_social"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon2">Razao Social</span>
                                            <input id="razao_social" name="razao_social" type="text" class="form-control" aria-describedby="basic-addon2"  />
                                        </div>    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="CNPJ" class="col-sm-1 control-label" title="CNPJ"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon3">CNPJ</span>
                                            <input id="CNPJ" name="CNPJ" type="text" class="form-control" aria-describedby="basic-addon3" />
                                        </div>
                                    </div>   
                                </div>
                                <div class="form-group">
                                    <label for="infos_complementares" class="col-sm-1 control-label" title="infos complementares"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon4">Info Comp</span>
                                            <input  id="infos_complementares" name="infos_complementares" type="text" class="form-control" aria-describedby="basic-addon4" >
                                        </div>
                                    </div>
                                </div>
                            </div> 
                                
                            </div>
                        </div>
                </div>
                
                <center style="margin:5% auto">
                    <input type="hidden" name="acao" value="criarInstituicao" class="btn btn-primary"> 
                    <input type="submit" class="btn btn-primary" onclick=""> 
                    <a href="index.html"><input type="button" value="Voltar" class="btn btn-default"></a>
                </center>
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
