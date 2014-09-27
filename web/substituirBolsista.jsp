<%-- 
    Document   : substituirBolsista
    Created on : 08/09/2014, 21:27:53
    Author     : Angelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SCP - Sistema de Controle de Projetos</title>
    </head>
    <body>
        <div id="page1">
            <h1>Substituição de Bolsista</h1>

            <div>
                <div id="boxOrientador"> 
                    <h2>Dados do Orientador</h2>
                </div>

                <form>
                    Orientador: <input list="orientador" name="orientador">
                    <datalist id="orientador">
                        <option value="Nome Sobrenome">

                    </datalist>
                    <br/>
                    Projeto: <input list="projeto" name="projeto">
                    <datalist id="projeto">
                        <option value="Título">

                    </datalist>
                </form>

            </div>
            <div >
                <div id="boxBolsista"> 
                    <h2>Bolsista Anterior</h2>
                </div>

                <form>
                    Bolsista: <input list="bolsita" name="bolsista">
                    <datalist id="bolsista">
                        <option value="Nome Sobrenome">
                    </datalist>
                    <p>Motivo de susbstituição:</p>
                    <input type="radio" name="motivo" value="desempenhoInsuficiente">Por desempenho insuficiente
                    <input type="radio" name="motivo" value="emprego">Bolsista adquiriu vínculo empragatício
                    <input type="radio" name="motivo" value="terminoCurso">Término do curso
                    <input type="radio" name="motivo" value="trocaPrograma">Adquiriu Bolsa em outra agência
                    <input type="radio" name="motivo" value="outro">Por outro motivo<input type="text" name="motivo">

                    <p>Informar o destino do bolsista:</p>
                    <input type="radio" name="destino" value="graduacao">Graduação
                    <input type="radio" name="destino" value="posGraduacao">Pós-Graduação, Especialização ou Mestrado
                    <input type="radio" name="destino" value="mercado">Mercado de trabalho
                    <input type="radio" name="destino" value="semAtividade">Sem atividade
                    <input type="radio" name="destino" value="pesquisa">Centro de pesquisa público
                    <input type="radio" name="destino" value="desconhece">Desconhece
                </form>




            </div>

            <div id="dadosBolsista">
                <div id="boxBolsista">
                    <form>
                        <h3>Dados bolsista: </h3>
                        <input type="radio" name="situacao" id="novo" value="novo">
                        <label for="novo">Novo</label>
                        <input type="radio" name="situacao" id="renovacao" value="renovacao">
                        <label for="renovacao">Renovação</label>
                        <input type="text" name="tentaiva"  placeholder="Tentativa">
                    </form>
                </div>
                <form id="indicacaoBolsista">
                    Curso: </br>
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

            </div>
            <div id="documentosBolsista">
                <form>
                    <div id="boxDocumentos">
                        <h3>Documentos</h3>
                    </div>

                    <label>RG: <input type="text" name="rg"></label>
                    <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                    <label>Data de Expedição: <input type="date" ></label></br>
                    <label>CPF: <input type="text" name="cpf"></label>
                    <label>Certidão Militar: <input type="text" name="certidao"></label></br>
                    Trabalha:
                    <label for="sim"> 
                        <input type="radio" name="trabalho" id="sim" value="sim"> Sim
                    </label>
                    <label for="nao"> 
                        <input type="radio" name="trabalho" id="nao" value="nao"> Não
                    </label></br>
                    <label>Local de Trabalho: <input type="text" name="rg"></label>
                    <label>Telefone: <input type="text" name="orgao"></label>

                </form>
            </div>
            <div id="dadosBancarios">
                <form>
                    <div id="boxDadosBancarios">
                        <h3> Dados da conta corrente (o titular deve ser o bolsista)</h3>
                    </div>
                    <span id="banco" > Banco do Brasil</span> &nbsp;
                    <label>Agência:<input type="text" name="agencia"></label>
                    <label>Conta corrente:<input type="number" name="conta"></label>
                </form>
            </div>
            <div id="responsaveis">
                <form>
                    <div id="boxResponsaveis">
                        <h3>Dados dos Pais ou Responsáveis</h3>
                    </div>
                    <label>Nome do pai ou responsável:<input type="text" name="pai"></label></br>
                    <label>RG: <input type="text" name="rg"></label>
                    <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                    <label>CPF: <input type="text" name="cpf"></label></br>
                    <label>Nome da mãe:<input type="text" name="mae"></label></br>
                    <label>RG: <input type="text" name="rg"></label>
                    <label>Órgão Expedidor: <input type="text" name="orgao"></label>
                    <label>CPF: <input type="text" name="cpf"></label>

                </form>
            </div>






        </div>
    </body>
</html>
