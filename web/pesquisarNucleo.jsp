<%-- 
    Document   : pesquisarNucleo
    Created on : 17/09/2014, 20:17:40
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Núcleo</title>
    </head>
    <body>
        <h2>Pesquisar Núcleo</h2>

        <table border="1">
            <tr>
                <th><span>ID</span>
                </th>
                <th><span>Nome do núcleo</span></th>
                <th colspan="2"><span>OPÇÕES</span>
                    <span></span></th>
            </tr>


            <c:forEach items="${nucleos}" var="nucleo">
                <tr>
                    <td><c:out value="${nucleo.codigoNucleo}" /></td>
                    <td><c:out value="${nucleo.nomeNucleo}" /></td>
                    <td><a href="CadastrarNucleoController?acao=prepararOperacao&operacao=Editar&matricula=<c:out value='${nucleo.codigoNucleo}'/>"> Editar</a></td>
                    <td><a href="CadastrarNucleoController?acao=prepararOperacao&operacao=Excluir&matricula=<c:out value='${nucleo.codigoNucleo}'/>"> Excluir</a></td>

                </tr>
            </c:forEach>

        </table>

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'CadastrarNucleo.java'">
            <span>Inserir</span>
        </button>

    </body>
</html>