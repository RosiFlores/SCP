<%-- 
    Document   : pesquisarTipoBolsa
    Created on : 17/09/2014, 20:18:50
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Tipo de Bolsa</title>
    </head>
    <body>
            <h2>Pesquisar Tipo de Bolsa</h2>
            
        
			
        <table BORDER="1">
                <tr>
                        <td><span>Código</span>
                        </td>
                        <td><span>Tipo da Bolsa</span></td>
                        <td colspan="2"><span>Opções</span>
                        <span></span></td>

                </tr>
               <c:forEach items="${tipoBolsas}" var="tipoBolsa">
                    <tr>
                    <td><c:out value="${tipoBolsa.codigo}" /></td>
                    <td><c:out value="${tipoBolsa.nome}" /></td>
                    <td><a href="CadastrarTipoBolsaController?acao=prepararOperacao&operacao=Editar&codigo=<c:out value='${tipoBolsa.codigo}'/>"> Editar</a></td>
                    <td><a href="CadastrarTipoBolsaController?acao=prepararOperacao&operacao=Excluir&codigo=<c:out value='${tipoBolsa.codigo}'/>"> Excluir</a></td>
                             </tr>
                </c:forEach>
        </table><br/>
        
        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'CadastrarTipoBolsaController.java'">
            <span>Inserir</span>
        </button>

    </body>
</html>