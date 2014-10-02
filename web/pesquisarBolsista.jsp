<%-- 
    Document   : PesquisarBolsista
    Created on : 17/09/2014, 15:28:41
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Bolsista</title>
    </head>
    <body>
        <h2>Pesquisar Bolsista</h2>
        
        <table BORDER="1">
            <tr>
                <td><span>Matricula</span></td>
                <td><span>Nome do Banco</span></td>
                <td><span>Agência</span></td>
                <td><span>Conta corrente</span></td>
                <td colspan="2"><span>OPÇÕES</span>
                    <span></span></td>

            </tr>
           
                  <c:forEach items="${bolsistas}" var="bolsista">
                      <tr>
                    <td><c:out value="${bolsista.matricula}" /></td>
                     <td><c:out value="${bolsista.nomeBanco}" /></td>
                     <td><c:out value="${bolsista.agencia}" /></td>
                     <td><c:out value="${bolsista.contaCorrente}" /></td>
                     <td><a href="CadastrarBolsistaController?acao=prepararOperacao&operacao=Editar&codBolsista=<c:out value='${bolsista.matricula}'/>"> Editar</a></td>
                     <td><a href="CadastrarBolsistaController?acao=prepararOperacao&operacao=Excluir&codBolsista=<c:out value='${bolsista.matricula}'/>"> Excluir</a></td>
                      
        </tr>
        
   </c:forEach>
        
  
</table>
        
<button onClick="location.href ='CadastrarBolsistaController?acao=prepararOperacao&Operacao=Incluir'">
    <span>Incluir</span>
</button> &nbsp;&nbsp;

<button onClick="location.href = 'index.jsp'">
    <span>Voltar</span>
</button>
</body>
</html>