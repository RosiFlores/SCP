<%-- 
    Document   : cadastrarCampus
    Created on : 08/09/2014, 21:45:20
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
            <fieldset>
                <div> 
                    <h2>Cadastro de Campus</h2>
                </div>
                        <form name="TelaLogin">
   
                             <label>ID:<input type="text" name="ID" size="20px"></label> <br/><br/>
                            
                            
                                <label>UF:<input list="uf" name="uf" size="20px" >
                            <datalist id="uf" >
                                <option value="Acre"> AC 
                                <option value="Alagoas">AL
                                <option value="Amazonas">AP
                                <option value="Amapá">AM
                                <option value="Bahia">BA
                                <option value="Ceará">CE
                                <option value="Distrito Federal">DF
                                <option value="Espírito Santo">ES
                                <option value="Goiás">GO
                                <option value="Maranhão">MA
                                <option value="Minas Gerais">MG
                                <option value="Mato Grosso">MT
                                <option value="Mato Grosso do Sul">MS
                                <option value="Pará">PA
                                <option value="Paraíba">PB
                                <option value="Pernambuco">PE
                                <option value="Piauí">PI
                                <option value="Paraná">PR
                                <option value="Rio de Janeiro">RJ
                                <option value="Rio Grande do Norte">RN
                                <option value="Rondônia">RO
                                <option value="Roraima">RR
                                <option value="Rio Grande do Sul">RS
                                <option value="Santa Catarina">SC
                                <option value="Sergipe">SE
                                <option value="São Paulo">SP
                                <option value="Tocantins">TO

                            </datalist>
                        </label><br/><br/>


                                <label>Instituição:<input type="text" name="instituicao" id="instituicao" size="20px" placeholder="Digite o nome da instituição..."></label> <br/><br/>
                                <label>Campus:<input type="text" name="campus" id="campus" size="20px" placeholder="Digite o campus da instituição..."></label> <br/><br/>




                   <center>

                        <button class="botao3" onClick="location.href='editais.jsp'">
                                <span>Cancelar</span>
                        </button> &nbsp;&nbsp;

                        <button class="botao3" onClick="location.href='home.jsp'">
                                <span>Cadastrar</span>
                        </button>
                    </center>

                            </form>
                    </fieldset>
                </div>      
       </div>
    </body>
</html>
