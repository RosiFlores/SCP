<%-- 
    Document   : cadastrarOrientador
    Created on : 08/09/2014, 20:47:05
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="default.css" media="all" />
        <title>SCP - Sistema de Controle de Projetos</title>
    </head>
    <body>
       <div id="page1">
            <div id="loginTela">

                <div> 
                    <h2>Cadastro do Orientador</h2>
                </div>
                <div>    
                    <form name="TelaLogin">
                        <label>Nome Completo:<input list="name" name="name">
                            <datalist id="nome">
                                <option value="Fulano">
                                <option value="Beltrano">
                                <option value="Ciclano">
                                <option value="João">
                            </datalist></label><br/><br/>
                    </form>
                    <form>
                        <label>Matrícula:<input type="text" name="matricula" id="matricula"></label> <br/><br/>
                        <label>Home Page do Currículo Lattes:<input type="text" name="curriculo" id="curriculo" placeholder="Digite a home page do curricula lattes..."></label> <br/><br/>
                        <label>Setor:<input list="setor" name="setor">
                            <datalist id="setor">
                                <option value="Ciências">
                                <option value="Matemática">
                                <option value="Informática">
                                <option value="Física">
                            </datalist></label><br/><br/>
                        
                                      

                        <center>
                   
                    <button class="botao3" onClick="location.href='editais.jsp'">
                            <span>Cancelar</span>
                    </button> &nbsp;&nbsp;

                    <button class="botao3" onClick="location.href='editais.jsp'">
                            <span>Cadastrar</span>
                    </button>
            </center>
                    </form>
                </div>      
       </div>
    </body>
</html>
