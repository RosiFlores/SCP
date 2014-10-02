<%-- 
    Document   : renovarProjeto
    Created on : 09/09/2014, 20:08:36
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="page1">
        <h2>Renovar Projeto </h2>
        <div> <form>
                        <label>Nome do Projeto: <input list="nomeProjeto" name="nomeProjeto">
                            <datalist id="nomeProjeto">
                                <option value="Projeto 1">
                                <option value="Projeto 2">
                                <option value="Projeto 3">
                            </datalist></label>
                                                          
                        <br/><br/><button>
                            <span>Cancelar</span>
                        </button> &nbsp;&nbsp;

                        <button>
                            <span>Renovar Projeto</span>
                        </button>

                    </form>
    </body>
</html>
