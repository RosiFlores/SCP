<%-- 
    Document   : excluirFuncionario
    Created on : 06/09/2014, 18:07:24
    Author     : Angelo
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
        <div id="page1">
            <h2>Excluir Funcionário</h2>
            <form>
                <label>Login: <input type="text" name="login"></label></br></br>
                <label> Motivo da exclusão <input list="exclusao" name="exclusao" >
                    <datalist id="exclusao">
                        <option value="Mudança de cargo">
                        <option value="Desligamento da empresa">

                    </datalist>
                </label>

            </form>
            <div>
                <button class="concluirCadastro">
                    <span>Concluir</span>
                </button>
                <button class="cancelarCadastro">
                    <span>Cancelar</span>
                </button>
            </div>
        </div>
    </body>
</html>
