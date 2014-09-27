<%-- 
    Document   : pesquisarEdital
    Created on : 17/09/2014, 20:17:05
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Edital</title>
    </head>
    <body>
            <h2>Pesquisar Edital</h2>
            
            <form>
            <span>Insira o nome:</span> <input name="nome">
            <button onClick="location.href = 'PesquisarEdital.java'">
                <span>Pesquisar</span>
            </button>

        </form>
			
        <table BORDER="1">
                <tr>
                        
                        <td><span>NUMERO</span></td>
                        <td><span>ANO</span></td>
                        <td><span>Tipo da Bolsa</span></td>
                        <td><span>Subarea de Conhecimento</span></td>
                        <td><span>Quantidade de Bolsas</span></td>
                         <td><span>Validade da Bolsa</span></td>
                        <td><span>Valor da Bolsa</span></td>
                         <td><span>Validade do Edital</span></td>
                          <td><span>Anexos</span></td>
                        <td colspan="2"><span>OPÇÕES</span>
                        <span></span></td>

                </tr>
                
                        <c:forEach items="${editais}" var="edital">
                            <tr>
                    <td><c.out value="${edital.numeroEdital}" /></td>
                     <td><c.out value="${edital.anoEdital}" /></td>
                        <td><c.out value="${edital.tipoBolsa}" /></td>
                        <td><c.out value="${edital.subareaConhecimento}" /></td>
                        <td><c.out value="${edital.quantidadeBolsa}" /></td>
                        <td><c.out value="${edital.validadeBolsa}" /></td>
                        <td><c.out value="${edital.valorBolsa}" /></td>
                        <td><c.out value="${edital.validadeEdital}" /></td>
                        <td><c.out value="${edital.anexos}" /></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.nomeEdita}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.nomeEdital}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.anoEdital}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.anoEdital}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.tipobolsa}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.tipoBolsa}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.subareaConhecimento}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.subareaConhecimento}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.quantidadeBolsa}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.quantidadeBolsa}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.validadeBolsa}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.validadeBolsa}'/>"> Excluir</a></td>
                      
                       <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.validadeEdital}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.validadeEdital}'/>"> Excluir</a></td>
                      
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Editar&codEdital=<c:out value='${edital.anexos}'/>"> Editar</a></td>
                      <td><a href="CadastrarEditalController?acao=prepararOperacao&operacao=Excluir&codEdital=<c:out value='${edital.anexos}'/>"> Excluir</a></td>
                      
                      
                      </tr>
   </c:forEach>
                
        
</table>
        
<button onClick="location.href ='CadastrarEditalController?acao=prepararOperacao&Operacao=Incluir'">
    <span>Incluir</span>
</button> &nbsp;&nbsp;

<button onClick="location.href = 'index.jsp'">
    <span>Voltar</span>
</button>
</body>
</html>