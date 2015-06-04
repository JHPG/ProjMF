<%-- 
--%>



<%@page import="java.util.List"%>
<%@page import="Model.Paciente"%>
<%@page import="DAO.PacienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- must be the three first things -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>MultiForm | Relatório dos Pacientes</title>
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
            <h2>Relatorio Paciente</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Informações Pessoais</div>
                <div class="panel-body">
                    <!--Opcional: adicionar restricao apenas letras e numero-->    

                    <%
                        /* Listando todos os pacientes*/
                        /* Alguns dados estao voltando null, pois falta terminar o metodo listaPacientes em PacienteDAO*/
                        /* Alterar o metodo para listar os pacientes de acordo com sua instituicao */
                        PacienteDAO dao = new PacienteDAO();

                        List<Paciente> pacientes = dao.listaPacientes();

                   for (Paciente p : pacientes) {%>


                    <table class="table table-bordered table-condensed table-responsive table-striped table-hover">
                        <tr>
                            <td>
                                <span style="font-weight:bold">Nome: </span> <%= p.getNome()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">CPF: </span><%= p.getCPF()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">CNPJ: </span><%= p.getCNPJ()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">RG: </span><%= p.getRG()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Estado_Civil: </span><%= p.getEstado_civil() %>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Nome_mae: </span><%= p.getNome_mae()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Nome_pai: </span><%= p.getNome_pai()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Cor_pele: </span><%= p.getCor_pele()%>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Data_nascimento: </span><%= p.getData_nascimento() %>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">UF_origem:</span> <%= p.getUF_origem() %>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Logradouro:</span> <%= p.getLogradouro() %>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Numero:</span> <%= p.getNumero() %>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <span style="font-weight:bold">Complemento: </span><%= p.getCPF()%>
                            </td>
                            
                        </tr>
                        
                    </table>
                    <%}%>



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
