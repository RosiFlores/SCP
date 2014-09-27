<%-- 
    Document   : pesquisarOrientador
    Created on : 17/09/2014, 20:17:58
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Orientador</title>
    </head>
    <body>
            <h2>Pesquisar Orientador</h2>
            
        
			
        <table border="1">
                <tr>
                    <th><span>ID</span>
                    </th>
                    <th><span>NOME DO ORIENTADOR</span></th>
                    <th colspan="2"><span>OPÇÕES</span>
                        <span></span></th>
                </tr>

                <tr>
                    <c:forEach items="${orientadores}" var="orientador">
                        <td><c:out value="${orientador.matricula}" /></td>
                         <td><c:out value="${orientador.nomeOrientador}" /></td>
                          <td><a href="CadastrarOrientadorController?acao=prepararOperacao&operacao=Editar&matricula=<c:out value='${orientador.matricula}'/>"> Editar</a></td>
                          <td><a href="CadastrarOrientadorController?acao=prepararOperacao&operacao=Excluir&matricula=<c:out value='${orientador.matricula}'/>"> Excluir</a></td>


                    </c:forEach>
                </tr>
          </table>
        
        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'CadastrarOrientador.java'">
            <span>Inserir</span>
        </button>

    </body>
</html>