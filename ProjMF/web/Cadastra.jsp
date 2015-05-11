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

        <title>MultiForm | Cadastro</title>

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
                    <a class="navbar-brand" href="#">MultiForm</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" placeholder="Usuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Senha" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Entrar</button>
                    </form>
                </div><!--/.navbar-collapse -->

        </nav>

        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <div class="container">
                <div style="margin:0 auto;">
                <h1>MultiForm</h1>
                </div>
                <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>-->
            </div>
        </div>

        <div class="container">
            <h2>Cadastro</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Informações Pessoais</div>
                <div class="panel-body">

                    <form class="form-horizontal" role="form" style="">
                        <div class="form-group">

                            <label for="Nome" class="col-sm-1 control-label" title="Nome" style=""></label>

                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">

                                    <span class="input-group-addon" id="basic-addon1">Nome</span>

                                    <input id="nome" name="nome" type="text" class="form-control" aria-describedby="basic-addon1" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="CPF" class="col-sm-1 control-label" title="CPF"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon2">CPF</span>
                                    <input id="CPF" name="CPF" type="text" class="form-control" aria-describedby="basic-addon2" />
                                </div>    
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="CNPJ" class="col-sm-1 control-label" title="CNPJ"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon3">CNPJ</span>
                                    <input id="CNPJ" name="CNPJ" type="text" class="form-control" aria-describedby="basic-addon3" />
                                </div>
                            </div>   
                        </div>
                        <div class="form-group">
                            <label for="RG" class="col-sm-1 control-label"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon4">RG</span>
                                    <input  id="RG" name="RG" type="text" class="form-control" aria-describedby="basic-addon4" >
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Genero" class="col-sm-1 control-label"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon5">Genero</span>
                                    <input id="Genero" name="genero" type="text" class="form-control" aria-describedby="basic-addon5" >
                                </div>
                            </div>
                        </div>   
                        <div class="form-group">
                            <label for="Estado Civil" class="col-sm-2 control-label"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon6">Estado Civil</span>
                                    <input id="estado-Civil" name="estado-civil" type="text" name="estado_civil" class="form-control"  aria-describedby="basic-addon6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Nome da mãe" class="col-sm-2 control-label"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="sizing-addon7">Nome da mãe</span>
                                    <input id="nome-Mae" name="nome-mae" type="text" class="form-control" aria-describedby="basic-addon7" >
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Nome do pai" class="col-sm-2 control-label"></label>
                            <div class="col-sm-12">
                                <div class="input-group col-sm-3">
                                    <span class="input-group-addon" id="basic-addon8">Nome do pai</span>
                                    <input type="text" class="form-control" id="nome-pai" aria-describedby="basic-addon8" >
                                </div>
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
                        <input type="submit" value="Cadastrar" class="btn btn-primary"> 
                        <a href="index.html"><input type="button" value="Voltar" class="btn btn-default"></a>
                    </form>
                </div> 
            </div>


            <!--<hr>-->

            <footer>
                <p>&copy; MultiForm 2015 </p>
            </footer>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="dist/js/bootstrap.min.js"></script>
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
        <!--reference: http://jsfiddle.net/zb4dc/2/-->
    </body>
</html>
