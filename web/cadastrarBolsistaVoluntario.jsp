<%-- 
    Document   : cadastrarBolsistaVoluntario
    Created on : 06/09/2014, 18:33:27
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
                <h2>Indicação de bolsista voluntário</h2>
            </center>

            <div id="dadosOrientador">
                <fieldset>
                    <legend> Dados do Orientador:</legend>

                    <form> Orientador: <input list="orientador" name="orientador">
                        <datalist id="orientador">
                            <option value="Nome Sobrenome">
                        </datalist>
                    </form>
                </fieldset><br/>
            </div>

            <div id="dadosBolsista">
                <fieldset>
                    <legend>Dados do bolsista:</legend>
                    <form>
                        <input type="radio" name="situacao" id="novo" value="novo">
                        <label for="novo">Novo</label>
                        <input type="radio" name="situacao" id="renovacao" value="renovacao">
                        <label for="renovacao">Renovação</label>
                        <input type="text" name="tentaiva"  placeholder="Tentativa">
                    </form>
               
                <form id="indicacaoBolsista">
                    Curso: </br></br>
                    <label for="graduacao">Graduação
                        <input type="radio" name="curso" id="graduacao" value="graduacao">
                        <input list="cursosGraduacao" name="cursosGraduacao">
                        <datalist id="cursosGraduacao">
                            <option value="Sistemas de Informação">
                            <option value="Engenharia Mecatrônica">
                            <option value="Licenciatura em Física">    
                        </datalist>

                        </br>
                    </label>

                    <! se cursosGraduação for verdadeiro cursosTecnico não pode liberar a lista>

                    <label for="tecnico">Ensino Médio/Técnico
                        <input type="radio" name="curso" id="tecnico" value="tecnico">
                        <input list="cursosTecnico" name="cursosTecnico">
                        <datalist id="cursosTecnico">
                            <option value="Informática">
                            <option value="Eventos">
                            <option value="Edificações">    
                        </datalist>

                        </br>
                    </label>

                    <label>Matrícula:<input type="number" name="matricula" ></label>
                    <label>Nome completo:<input type="text" name="nome"></label></br>
                    <label>Data de nascimento: <input type="date" ></label></br>
                    <label>UF de Nascimento:<input list="ufNascimento" name="ufNascimento" >
                        <datalist id="ufNascimento" >
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
                    </label>
                    <label>Nacionalidade: <input type="text" name="nacionalidade"></label></br>
                    <label>Logradouro: <input type="text" name="logradouro"></label></br>
                    <label>Número: <input type="number" name="numero"></label>
                    <label>Complemento:<input type="text" name="comp"></label>
                    <label>Bairro <input type="text" name="bairro"></label></br>
                    <label>Cidade <input type="text" name="cidade"></label>
                    <label>UF:<input list="uf" name="uf" >
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
                    </label>
                    <label>CEP: <input type="text" name="cep"></label></br>
                    <label>Telefone Residencial: <input type="text" name="cep"></label>
                    <label>Celular: <input type="text" name="cep"></label>
                    <label>E-mail: <input type="email" name="cep"></label>
                </form>
                </fieldset><br/>
            </div>
            
            <div id="documentosBolsista">
                <fieldset>
                  <legend>Documentos:</legend>
                  <form>
                    <label>RG: <input type="text" name="rg"></label>
                    <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                    <label>Data de Expedição: <input type="date" ></label></br>
                    <label>CPF: <input type="text" name="cpf"></label>
                    <label>Certidão Militar: <input type="text" name="certidao"></label></br></br>
                    <label>Trabalha:<br/></br>
                        <input type="radio" name="trabalho" id="sim" value="sim"> Sim
                        <input type="radio" name="trabalho" id="nao" value="nao"> Não
                    </label></br>
                     <label>Local de Trabalho: <input type="text" name="rg"></label>
                    <label>Telefone: <input type="text" name="orgao"></label>
                        
                   </form>
                </fieldset><br/>
            </div>
            
            
            <div id="responsaveis">
                <fieldset>
                    <legend>Dados dos pais ou responsavel:</legend>
                    <form>
                        <label>Nome do pai ou responsável:<input type="text" name="pai"></label></br>
                        <label>RG: <input type="text" name="rg"></label>
                        <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                        <label>CPF: <input type="text" name="cpf"></label></br>
                        <label>Nome da mãe:<input type="text" name="mae"></label></br>
                        <label>RG: <input type="text" name="rg"></label>
                        <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                        <label>CPF: <input type="text" name="cpf"></label>
                    </form>
                </fieldset><br/><br/>
            </div>
                <center>
                   
                    <button class="botao3" onClick="location.href='projetos.jsp'">
                            <span>Cancelar</span>
                    </button> &nbsp;&nbsp;

                    <button class="botao3" onClick="location.href='home.jsp'">
                            <span>Cadastrar</span>
                    </button>
            </center>
            
            </div>

    </body>
</html>
