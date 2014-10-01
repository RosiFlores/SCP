<%-- 
    Document   : pesquisarInstituicao
    Created on : 01/10/2014, 16:24:53
    Author     : Angelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Instituição</title>
    </head>
    <body>
       
        <h2>Pesquisar Instituição</h2>
        
        <table border="1">
            <tr>
                <th><span>Código</span>
                </th>
                <th><span>Nome</span></th>
                <th colspan="2"><span>Opções</span>
                    <span></span></th>
            </tr>

            
                <c:forEach items="${instituicoes}" var="instituicao">
                    <tr>
                    <td><c:out value="${instituicao.codigoInstituicao}" /></td>
                    <td><c:out value="${instituicao.nomeInstituicao}" /></td>
                    <td><a href="CadastrarInstituicaoController?acao=prepararOperacao&operacao=Editar&codigoInstituicao=<c:out value='${instituicao.codigoInstituicao}'/>"> Editar</a></td>
                    <td><a href="CadastrarInstituicaoController?acao=prepararOperacao&operacao=Excluir&codigoInstituicao=<c:out value='${instituicao.codigoInstituicao}'/>"> Excluir</a></td>
                             </tr>
                </c:forEach>
           

        </table>

        <button onClick="location.href = 'CadastrarInstituicaoController?acao=prepararOperacao&Operacao=Incluir'">
            <span>Incluir</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button>
    
    </body>
</html>
