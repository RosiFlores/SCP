<%-- 
    Document   : pesquisarProjeto
    Created on : 17/09/2014, 20:18:29
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisar Projeto</title>
    </head>
    <body>
        <h2>Pesquisar Projeto</h2>

        <table BORDER="1">
            <tr>
                <td><span>ID</span> </td>
                <td><span>Titulo</span></td>
                <td><span>CargaHoraria</span></td>
                <%--<td><span>Edital_idEdital</span></td>--%>
                <td><span>palavraChave</span></td>
                <td><span>duracao</span></td>
                <td><span>dataInicio</span></td>
                <td><span>dataTermino</span></td>
                <td><span>valorfinanciamento</span></td>
                <td><span>dataFinanciamento</span></td>
                <td><span>tipoBolsa</span></td>
                <td><span>programa</span></td>
                <td><span>agenciaFomento</span></td>
                <td><span>quantidadeBolsista</span></td>
                <td><span>instituicaoParceira</span></td>
                <td><span>grupoPesquisaCNPq</span></td>
                <td><span>nucleoOrientador</span></td>
                <td><span>professorParticipante</span></td>
                <td><span>cargaHorariaProfessor</span></td>



                <td colspan="2"><span>OPÇÕES</span>
                    <span></span></td>

            </tr>
            <c:forEach items="${projetos}" var="projeto">
                <tr>
                    <td><c:out value="${projeto.idProjeto}" /></td>
                    <td><c:out value="${projeto.titulo}" /></td>
                    <td><c:out value="${projeto.cargaHoraria}"/></td>
                    <%--<td><c:out value="${projeto.Edital_idEdital}"/></td>--%>
                    <td><c:out value="${projeto.palavraChave}"/></td>
                    <td><c:out value="${projeto.duracao}"/></td>
                    <td><c:out value="${projeto.dataInicio}"/></td>
                    <td><c:out value="${projeto.dataTermino}"/></td>
                    <td><c:out value="${projeto.valorfinanciamento}"/></td>
                    <td><c:out value="${projeto.dataFinanciamento}"/></td>
                    <td><c:out value="${projeto.tipoBolsa}"/></td>
                    <td><c:out value="${projeto.programa}"/></td>
                    <td><c:out value="${projeto.agenciaFomento}"/></td>
                    <td><c:out value="${projeto.quantidadeBolsista}"/></td>
                    <td><c:out value="${projeto.instituicaoParceira}"/></td>
                    <td><c:out value="${projeto.grupoPesquisaCNPq}"/></td>
                    <td><c:out value="${projeto.nucleoOrientador}"/></td>
                    <td><c:out value="${projeto.professorParticipante}"/></td>
                    <td><c:out value="${projeto.cargaHorariaProfessor}"/></td>
                    
                    <td><a href="CadastrarCursoController?acao=prepararOperacao&operacao=Editar&codigo=<c:out value='${projeto.idProjeto}'/>"> Editar</a></td>
                    <td><a href="CadastrarCursoController?acao=prepararOperacao&operacao=Excluir&codigo=<c:out value='${projeto.idProjeto}'/>"> Excluir</a></td>
                </tr>
            </c:forEach>
        </table><br/>

        <button onClick="location.href = 'index.jsp'">
            <span>Voltar</span>
        </button> &nbsp;&nbsp;

        <button onClick="location.href = 'CadastrarProjetoController.java'">
            <span>Inserir</span>
        </button>

    </body>
</html>