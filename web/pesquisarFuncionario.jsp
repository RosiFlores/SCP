<%-- 
    Document   : pesquisarFuncionario
    Created on : 17/09/2014, 20:17:29
    Author     : Mayara Amanda
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Funcionário</title>
    </head>
    <body>
        <h2>Pesquisar Funcionário</h2>
       

        <table border="1">
            <tr>
                <th><span>Matricula</span>
                </th>
                
                <th colspan="2"><span>OPÇÕES</span>
                    <span></span></th>
            </tr>

            
                <c:forEach items="${funcionarios}" var="funcionario">
                    <tr>
                    <td><c:out value="${funcionario.matricula}" /></td>
                
                      <td><a href="CadastrarFuncionarioController?acao=prepararOperacao&operacao=Editar&matricula=<c:out value='${funcionario.matricula}'/>"> Editar</a></td>
                      <td><a href="CadastrarFuncionarioController?acao=prepararOperacao&operacao=Excluir&matricula=<c:out value='${funcionario.matricula}'/>"> Excluir</a></td>

                      </tr>
                </c:forEach>
            
        </table>
        
<button onClick="location.href ='CadastrarFuncionarioController?acao=prepararOperacao&Operacao=Incluir'">
    <span>Incluir</span>
</button> &nbsp;&nbsp;

<button onClick="location.href = 'index.jsp'">
    <span>Voltar</span>
</button>
</body>
</html>
