<%-- 
    Document   : cadastrarEdital
    Created on : 06/09/2014, 16:58:38
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
        <div id="TelaLogin">
            <center>
                <h2>Cadastro de Edital</h2>
            </center>
                <form>
                    <fieldset>
                        <legend>Dados do edital</legend>
                        <label>Número do Edital:<input type="text" name="numEdital" size="30" placeholder="Digite o número do edital..."></label><br/><br/><label>Ano do Edital:<input type="text" name="anoEdital" size="30" placeholder="Digite o ano do edital..."></label> <br/><br/>
                        <label>Tipo de bolsa: <input list="tipoBolsa" name="tipoBolsa" size="30">
                            <datalist id="tipoBolsa">
                                <option value="Extensão Acadêmica">
                                <option value="Iniciação Científica">
                                <option value="Treinamento I">
                                <option value="Treinamento II">
                            </datalist><br/><br/>

                        <label>Subárea de Conhecimento:<input list="subareaConhecimento" name="subareaConhecimento" size="30">
                            <datalist id="subareaConhecimento">
                                <option value="">
                                <option value="">
                                <option value="">
                                <option value="">
                            </datalist><br/><br/>

                        <label>Quantidade de Bolsas:<input type="text" name="quantiBolsa" size="30" placeholder="Digite a quantidade de bolsas..."></label> <br/><br/>
                        <label>Validade da Bolsa:<input type="text" name="validBolsa" size="30" placeholder="Digite a validade do edital..."></label> <br/><br/>
                        <label>Valor da Bolsa:<input type="text" name="valorBolsa" size="30" placeholder="Digite o valor da bolsa..."></label> <br/><br/>
                        <label>Validade do Edital:<input type="text" name="validadeEdital" size="30" placeholder="Digite a validade do edital..."></label> <br/><br/>


                            <center>

                                <button class="botao3" onClick="location.href='editais.jsp'">
                                        <label>Cancelar</label>
                                </button> &nbsp;&nbsp;

                                <button class="botao3" onClick="location.href='editais.jsp'">
                                        <label>Cadastrar</label>
                                </button>
                             </center>
                        </form>
                    </fieldset>
            </div>
    </body>
</html>