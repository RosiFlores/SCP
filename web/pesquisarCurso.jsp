<%-- 
    Document   : pesquisarCurso
    Created on : 17/09/2014, 20:16:34
    Author     : Mayara Amanda
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Curso</title>
    </head>
    <body>
        <h2>Pesquisar Curso</h2>
        
        <table border="1">
            <tr>
                <th><span>Código</span>
                </th>
                <th><span>Nome</span></th>
                <th colspan="2"><span>Opções</span>
                    <span></span></th>
            </tr>

            
                <c:forEach items="${cursos}" var="curso">
                    <tr>
                    <td><c:out value="${curso.codigo}" /></td>
                    <td><c:out value="${curso.nome}" /></td>
                    <td><a href="CadastrarCursoController?acao=prepararOperacao&operacao=Editar&codigo=<c:out value='${curso.codigo}'/>"> Editar</a></td>
                    <td><a href="CadastrarCursoController?acao=prepararOperacao&operacao=Excluir&codigo=<c:out value='${curso.codigo}'/>"> Excluir</a></td>
                             </tr>
                </c:forEach>
           

        </table>

        <button onClick="location.href = 'CadastrarCursoController?acao=prepararOperacao&Operacao=Incluir'">
            <span>Incluir</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button>
    </body>
</html>
