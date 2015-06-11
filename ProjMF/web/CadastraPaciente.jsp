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
            <h2>Cadastro Paciente</h2>
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
                                    <label for="CPF" class="col-sm-1 control-label" title="CPF"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon2">CPF</span>
                                            <input id="CPF" name="CPF" type="text" class="form-control" aria-describedby="basic-addon2"  />
                                        </div>    
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="RG" class="col-sm-1 control-label"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon4">RG</span>
                                            <input  id="RG" name="RG" type="text" class="form-control" aria-describedby="basic-addon4" >
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="Genero" class="col-sm-1 control-label"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group col-sm-8">
                                            <span class="input-group-addon" id="basic-addon4">Genero</span>
                                            <select class="form-control">
                                                <option value="feminino">Feminino</option>
                                                <option value="masculino">Masculino</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                                </div>
                             
                            <div class="form-group">
                                <label for="Estado Civil" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon6">Estado Civil</span>
                                        <input id="estado-Civil" name="estado_civil" type="text" name="estado_civil" class="form-control"  aria-describedby="basic-addon6">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Nome da mãe" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="sizing-addon7">Nome da mãe</span>
                                        <input id="nome-Mae" name="nome_mae" type="text" class="form-control" aria-describedby="basic-addon7" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Nome do pai" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Nome do pai</span>
                                        <input id="nome-pai" name="nome_pai" type="text" class="form-control"  aria-describedby="basic-addon8" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Cor de pele" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Cor de pele</span>
                                        <input id="cor-pele" name="cor_pele" type="text" class="form-control"  aria-describedby="basic-addon9" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Data de nascimento" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Data de nascimento</span>
                                        <input id="data-nascimento" name="data_nascimento" type="text" class="form-control"  aria-describedby="basic-addon10" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="UF de origem" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">UF de origem</span>
                                        <input id="uf-origem" name="UF_origem" type="text" class="form-control"  aria-describedby="basic-addon11" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Logradouro" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Logradouro</span>
                                        <input id="logradouro" name="logradouro" type="text" class="form-control"  aria-describedby="basic-addon12" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Numero" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Número</span>
                                        <input id="numero" name="numero" type="text" class="form-control"  aria-describedby="basic-addon13" >
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Complemento" class="col-sm-2 control-label"></label>
                                <div class="col-sm-12">
                                    <div class="input-group col-sm-8">
                                        <span class="input-group-addon" id="basic-addon8">Complemento</span>
                                        <input id="complemento" name="complemento" type="text" class="form-control"  aria-describedby="basic-addon14" >
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <center style="margin:5% auto">
                    <input type="hidden" name="acao" value="criarPaciente" class="btn btn-primary"> 
                    <input type="submit" class="btn btn-primary" onclick="sucesso()"> 
                    <a href="index.html"><input type="button" value="Voltar" class="btn btn-default"></a>
                </center>
                </form>
            </div
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
