<%-- 
    Document   : pesquisarTipoCurso
    Created on : 01/10/2014, 16:24:32
    Author     : Angelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Tipos de Cursos</title>
    </head>
    <body>
         <h2>Pesquisar Tipos de Cursos</h2>
        
        <table border="1">
            <tr>
                <th><span>Código</span>
                </th>
                <th><span>Nome</span></th>
                <th colspan="2"><span>Opções</span>
                    <span></span></th>
            </tr>

            
                <c:forEach items="${tipoCursos}" var="tipoCurso">
                    <tr>
                    <td><c:out value="${tipoCurso.codigo}" /></td>
                    <td><c:out value="${tipoCurso.nome}" /></td>
                    
                    <td><a href="CadastrarTipoCursoController?acao=prepararOperacao&operacao=Editar&codigo=<c:out value='${tipoCurso.codigo}'/>"> Editar</a></td>
                    <td><a href="CadastrarTipoCursoController?acao=prepararOperacao&operacao=Excluir&codigo=<c:out value='${tipoCurso.codigo}'/>"> Excluir</a></td>
                             </tr>
                </c:forEach>
           

        </table>

        <button onClick="location.href = 'CadastrarTipoCursoController?acao=prepararOperacao&Operacao=Incluir'">
            <span>Incluir</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button>
    </body>
</html>
