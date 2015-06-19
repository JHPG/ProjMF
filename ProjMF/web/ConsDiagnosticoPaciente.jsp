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
            List<Diagnostico> listaDiagnostico = (ArrayList) request.getAttribute("listaDiagnostico");
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
              <ul class="nav navbar-nav">
                <li><a href="index.html">Home</a></li>
                <li><a href="CadastraInstituicao.jsp">Cadastrar Instituição</a></li>
                <li><a href="CadastraPaciente.jsp">Cadastrar Paciente</a></li>
                <li class="active"><a href="ConsDiagnosticoPaciente.jsp">Consultar Diagnóstico</a></li>
                <li><a href="TransferePaciente.jsp">Transferir Paciente</a></li>
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
            <h2>Consulta de diagnóstico do paciente</h2>
            <div class="panel panel-default">
                <div class="panel-heading">Consulta</div>
                <div class="panel-body">
                    <!--Opcional: adicionar restricao apenas letras e numero-->    
                    <form class="form-horizontal" role="form" style="" method="POST" action="FrontController">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group" style="margin: 60px 0px">
                                    <label for="NovaInstituicao" class="col-sm-1 control-label" title="NovaInstituicao"></label>
                                    <div class="col-sm-12">
                                        <div class="input-group">
                                            <input type="text" name="codPac" placeholder="Digite o código do paciente" class="form-control">
                                            <input type="hidden" name="acao" value="consDiagPaciente">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" type="submit">Pesquisar</button>
                                            </span>
                                        </div>   
                                    </div>    
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!--Tabela de histórico-->
                            
                            <%  //Gera a tabela com o histórico
                                if(listaDiagnostico != null) { %>
                                    <table class="table table-striped table-bordered table-bordered table-condensed table-responsive">
                                        <tr>
                                            <th>Diagnóstico Inicial</th>
                                            <th>Vulnerabilidades</th>
                                            <th>Objetivos</th>
                                            <th>Resultados</th>
                                        </tr>
                                
                                        <%
                                        for(Diagnostico h: listaDiagnostico){  %>
                                            
                                            <tr>
                                                <td><%=h.getDiag_inicial().toString() %></td>
                                                <td><%=h.getVulnerabilidades().toString() %></td>
                                                <td><%=h.getObjetivos().toString() %></td>
                                                <td><%=h.getResultados().toString() %></td>
                                            </tr>
                                            
                                        <%
                                        }
                                    %> </table> <%
                                }
                            %>
                        </div>
                        <a href="menu.html"><input type="button" value="Voltar" class="btn btn-default"></a>
                    </form>
                </div>
            </div>
            </div> 
        
        <!--<hr>-->
        <footer>
            <center><p>&copy; MultiForm 2015 </p></center>
        </footer>
    </div>

    <script src="dist/js/jquery.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <!-- reference: http://jsfiddle.net/zb4dc/2/ -->
</body>
</html>
