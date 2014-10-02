<%-- 
    Document   : pesquisarSubArea
    Created on : 17/09/2014, 20:19:05
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Subarea de Conhecimento</title>
    </head>
    <body>
        <h2>Pesquisar Subarea de Conhecimento</h2>


        <table BORDER="1">
            <tr>
                <td><span>Código</span>
                </td>
                <td><span>Nome</span></td>
                <td colspan="2"><span>OPÇÕES</span>
                    <span></span></td>

            </tr>

            <c:forEach items="${subAreas}" var="subArea">
                <tr>
                    <td><c:out value="${subArea.codigo}" /></td>
                <td><c:out value="${subArea.nome}" /></td>
                <td><a href="CadastrarSubAreaController?acao=prepararOperacao&operacao=Editar&codigo=<c:out value='${subArea.codigo}'/>"> Editar</a></td>
                <td><a href="CadastrarSubAreaController?acao=prepararOperacao&operacao=Excluir&codigo=<c:out value='${subArea.codigo}'/>"> Excluir</a></td>
                </tr>
            </c:forEach>
        </table><br/>

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'CadastrarSubAreaController.java'">
            <span>Inserir</span>
        </button>

    </body>
</html>