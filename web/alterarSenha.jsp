<%-- 
    Document   : alterarSenha
    Created on : 06/09/2014, 15:02:38
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
        <div id="loginTela">
            <fieldset>
                <div> 
                    <h2>Alterar Senha</h2>
                </div>
                        <div> 
                            <form>
                               Matrícula: <input type="text" name="matricula" size="37px" placeholder="Digite sua matricula..."></br></br>
                               Nova Senha: <input type="password" name="password" size="35px" placeholder="Digite sua nova senha..."></br></br>
                               Confirmar Senha: <input type="password" name="Confirmepassword" size="30px" placeholder="Repita sua senha..."></br></br>
                               <button onClick="location.href='index.jsp'">
                                   <label>Cancelar</label>
                                </button> &nbsp;&nbsp;
                                <button onClick="location.href='index.jsp'" >
                                    <label>Concluir</label>
                                </button> 

                            </form>
                        </div>
                </fieldset>
        </div>
    </body>
</html>
