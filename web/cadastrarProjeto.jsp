<%-- 
    Document   : cadastrarProjeto
    Created on : 08/09/2014, 16:16:35
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
           
           <center>
             <h2>Cadastrar Projeto</h2><br/>
           </center>
           
            <div> 
                <fieldset>
                    <legend>Dados do projeto</legend>
                    <form>
                        <label>Título do Projeto:<input type="text" name="tituloProjeto" size="30" placeholder="Digite o título do projeto..."></label>
                       <label>Subárea de Conhecimento:<input list="subareaConhecimento" size="30" name="subareaConhecimento">
                                <datalist id="tipoBolsa">
                                    <option value="Ciências">
                                    <option value="Matemática">
                                    <option value="Informática">
                                    <option value="Física">
                                </datalist></label><br/><br/>
                                 <label>Nome do Orientador:<input list="orientador" size="30" name="oritentador">
                                <datalist id="orientador">
                                    <option value="Nome Sobrenome">
                                </datalist></label><br/><br/>

                    <label>Palavras-Chave:<input type="text" name="palavrasChave" size="30" placeholder="Digite as palavras separadas por vírgulas..."></label> <br/><br/>

                    <label>Duração do Projeto: <br/>Início<input type="date" >&nbsp; Término &nbsp;<input type="date" ></label><br/><br/>   

                    <label>Renovação do Projeto: <input type="radio" name="OPCAO" value="op1"> Sim &nbsp;&nbsp; <input type="radio" name="OPCAO" value="op2"> Não</label><br/><br/>

                    <label>O projeto possui financiamento aprovado? <input type="radio" name="OPCAO" value="op1"> Sim &nbsp;&nbsp; <input type="radio" name="OPCAO" value="op2"> Não</label><br/><br/>

                    <label>Valor:<input type="text" name="valor" size="30" placeholder="Digite o valor..."></label>&nbsp;&nbsp;<label>Ano do Edital:<input type="text" name="anoEdital" id="numEdital" placeholder="Digite o ano do edital..."></label> <br/><br/>

                    <label>Data de financiamento: <input type="date" size="30"></label><br/><br/>

                    <label>O projeto possui bolsa de iniciação científica ou tecnológica? <input type="radio" name="OPCAO" value="op1"> Sim &nbsp;&nbsp; <input type="radio" name="OPCAO" value="op2"> Não</label><br/><br/>

                    <label>Programa/Agência:<input type="text" name="prog" size="30" placeholder="Digite o nome do Programa/Agência..."></label> <br/><br/>

                    <label>Quantidade:<input type="text" name="quantidade"></label><br/><br/>
                    <label>O projeto prevê convênio com outra instituição? <input type="radio" name="OPCAO" value="op1"> Sim &nbsp;&nbsp; <input type="radio" name="OPCAO" value="op2"> Não</label><br/><br/>
                    <label>Qual? (Anexar comprovante) <input type="text" name="nomeInstituicao" size="30" placeholder="Digite o nome da instituição..."></label> <br/><br/>

                    <label>Setor/Núcleo (Orientador do projeto):<input list="nucleoProf" size="30" name="nucleoProf"></label>
                            <datalist id="nucleoProf">
                                    <option value="Informática">
                                    <option value="Matemática">
                                    <option value="Ciências">
                                    <option value="Física">
                             </datalist></label><br/><br/>


                                    <label>Carga horária semanal dispensada pelo orientador do projeto? <input type="text" size="30" name="cargaHoraria" id="cargaHoraria" placeholder="Digite a carga horária..."></label> <br/><br/>						 
                                    <label>Grupo de pesquisa cadastrado no CNPq (Se houver): <input type="text" size="30" name="grupoPesquisa" id="grupoPesquisa" placeholder="Digite o nome do grupo..."></label> <br/><br/>
                                    <label>Cronograma (Inserir em anexo):</label> &nbsp;&nbsp;

                                    
                                   
                      <button>
                            <label>Inserir anexos</label>
                      </button><br/><br/><br/>
                      
                </fieldset><br/><br/>

                      <center>

                                <button class="botao3" onClick="location.href='editais.jsp'">
                                        <label>Cancelar</label>
                                </button> &nbsp;&nbsp;

                                <button class="botao3" onClick="location.href='editais.jsp'">
                                        <label>Cadastrar</label>
                                </button>
                      </center>

                   </form>

             </div>
    
    </body>
</html>