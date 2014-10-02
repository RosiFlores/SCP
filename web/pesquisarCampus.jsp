<%-- 
    Document   : pesquisarCampus
    Created on : 17/09/2014, 20:16:00
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Campus</title>
    </head>
    <body>
        <h2>Pesquisar Campus</h2>
        <%--<form>
            <span>Insira o nome:</span> <input name="nome">
            <button onClick="location.href = 'PesquisarCampus.java'">
                <span>Pesquisar</span>
            </button>

        </form>
        --%>
        <table BORDER="1">
            <tr>
                <td><span>ID</span>
                </td>
                <td><span>NOME DO CAMPUS</span></td>
                
                <td colspan="2"><span>OPÇÕES</span>
                    <span></span></td>

            </tr>

            <c:forEach items="${campus}" var="campus">
                <tr>
                    <td><c:out value="${campus.codigo}" /></td>
            <td><c:out value="${campus.nome}" /></td>
            
            <%--<td><c.out value="${campus.instituicao_codigo}" /></td>--%>
    

<td><a href="CadastrarCampusController?acao=prepararOperacao&operacao=Editar&codCampus=<c:out value='${campus.codigo}'/>"> Editar</a></td>
<td><a href="CadastrarCampusController?acao=prepararOperacao&operacao=Excluir&codCampus=<c:out value='${campus.codigo}'/>"> Excluir</a></td>



<%--<td><a href="CadastrarCampusController?acao=prepararOperacao&operacao=Editar&codCampus=<c:out value='${campus.instituicao_codigo}'/>"> Editar</a></td>
<td><a href="CadastrarCampusController?acao=prepararOperacao&operacao=Excluir&codCampus=<c:out value='${campus.instituicao_codigo}'/>"> Excluir</a></td>--%>


</tr> 
</c:forEach>


</table>

<button onClick="location.href = 'CadastrarCampusController?acao=prepararOperacao&Operacao=Incluir'">
    <span>Incluir</span>
</button> &nbsp;&nbsp;

<button onClick="location.href = 'index.jsp'">
    <span>Voltar</span>
</button>
</body>
</html>