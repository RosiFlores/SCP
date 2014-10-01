<%-- 
    Document   : index 
    Created on : 28/09/2014, 20:37:49
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="default.css" media="all" />
        <title>SCP - Sistema de Controle de Projetos</title>
    </head>
    <body>
        <div id="page">
            <center>
                <button class="botao" onclick="location.href='PesquisarBolsistaController'">
                        <span>Pesquisar Bolsista</span>
                </button>
                
                <button class="botao" onclick="location.href='PesquisarCampusController'">
                        <span>Pesquisar Campus</span>
                </button>
                
                <button class="botao" onclick="location.href='PesquisarCursoController'">
                        <span>Pesquisar Curso</span>
                </button><br/><br/>
                
                <button class="botao" onclick="location.href='PesquisarEditalController'">
                        <span>Pesquisar Edital</span>
                </button>
                
                <button class="botao1" onclick="location.href='PesquisarFuncionarioController'">
                        <span>Pesquisar Funcionario</span>
                </button>   

                <button class="botao1" onclick="location.href='PesquisarNucleoController'">
                        <span>Pesquisar Núcleo</span>
                </button><br/><br/>
                
                <button class="botao" onclick="location.href='PesquisarOrientadorController'">
                        <span>Pesquisar Professor Orientador</span>
                </button>

                <button class="botao" onclick="location.href='PesquisarProjetoController'">
                        <span>Pesquisar Projeto</span>
                </button>

                <button class="botao1" onclick="location.href='PesquisarSubAreaController'">
                        <span>Pesquisar SubArea de Conhecimento</span>
                </button><br/><br/>

                <button class="botao" onclick="location.href='PesquisarTipoBolsaController'">
                        <span>Pesquisar Tipo de Bolsa</span>
                </button>
                <button class="botao1" onclick="location.href='PesquisarTipoCursoController'">
                        <span>Pesquisar Tipos de Cursos</span>
                </button>
                <button class="botao" onclick="location.href='PesquisarInstituicaoController'">
                        <span>Pesquisar Instituições</span>
                </button>

            </center>

        </div>
        
    </body>
</html>

