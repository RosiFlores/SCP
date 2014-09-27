<%-- 
    Document   : cadastrarFuncionario
    Created on : 06/09/2014, 15:08:10
    Author     : Angelo
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
               <h2>Cadastro de Funcionário</h2>
                <fieldset>
                    <legend>Dados Pessoais</legend>

                    <form id="dadosPessoais">
                        <label>Data de nascimento: <input type="date" ></label></br>
                        <label>Nacionalidade: <input type="text" name="nacionalidade"></label>
                        <label>Estado Civil:<input list="estadoCivil" name="estadoCivil">
                            <datalist id="estadoCivil">
                                <option value="Solteiro">
                                <option value="Casado">
                                <option value="Divorciado">
                                <option value="Viúvo">
                            </datalist>
                        </label>
                        <label>Sexo:<input list="sexo" name="sexo">
                            <datalist id="sexo">
                                <option value="Feminino">
                                <option value="Masculino">
                            </datalist>
                        </label></br>
                        <label>Nome da mãe: <input type="text" name="mae"> </label>
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
                        <label>Cor/Raça: <input type="text" name="cor"> </label></br>
                        <label>Nome do pai: <input type="text" name="pai"> </label>
                        <label>Naturalidade: <input type="text" name="naturalidade"> </label></br>
                        <label>Tipo Sanguíneo: <input type="text" name="tipoSanguineo"> </label>
                        <label>Fator Rh: <input list="rh" name="rh">
                            <datalist id="rh">
                                <option value="Negativo">
                                <option value="Positivo">
                            </datalist> 
                        </label></br>
                        <label>Necessidade especial:
                            <input type="checkbox" name="necessidade" value="sim">Sim 
                            <input type="checkbox" name="necessidade" value="nao">Não
                        </label>
                        <label>Qual: <input type="text" name="qualNecessidade"> </label>

                    </form>
                </fieldset><br/>
               <fieldset>
                    <legend>Dados de escolaridade</legend>
                    <form id="formEscolaridade">
                      <label>Nível: <input list="nivel" name="nivel">
                            <datalist id="nivel">
                                <option value="Fundamental">
                                <option value="Médio">
                                <option value="Superior">
                            </datalist> 
                        </label>  
                        <label>Formação:<input type="text" name="formacao"> <label>
                        <label>Instituição:<input type="text" name="instituicao"> <label>

                    </form>
               </fieldset><br/>
               
               <fieldset>
                    <legend>Dados de endereço</legend>
                        <form id="formEndereco">


                            <label>Rua:<input type="text" name="rua"> <label>
                            <label>Número<input type="text" name="numero"> <label></br>
                            <label>Complemento:<input type="text" name="complemento"> <label>             
                            <label>Bairro:<input type="text" name="bairro"> <label>
                            <label>Município:<input type="text" name="municipio"> <label></br>
                            <label>País<input type="text" name="pais"> <label>             
                            <label>Estado:<input type="text" name="estado"> <label>
                            <label>CEP:<input type="text" name="cep"> <label></br>
                            <label>Telefone:<input type="text" name="telefone"> <label>             
                            <label>Celular:<input type="text" name="celular"> <label>
                            <label>E-mail:<input type="text" name="email"> <label></br>

                        </form>
               </fieldset><br/>
               <fieldset>
                    <legend>Documentos</legend>
                        <label>RG:<input type="text" name="rg"> <label>
                        <label>Orgão Expedidor:<input type="text" name="orgao"><label><br/>
                        <label>CPF:<input type="text" name="cpf"> <label>
                        <label>Título de Eleitor:<input type="text" name="titulo"> <label><br/>
                        <label>Comprovante Militar:<input type="text" name="municipio"> <label>
                        <label>PIS/PASEP:<input type="text" name="pis"> <label>             


                </form>
                </fieldset><br/>
               <center>

                        <button class="botao3">
                                <span>Cancelar</span>
                        </button> &nbsp;&nbsp;

                        <button class="botao3">
                                <span>Cadastrar</span>
                        </button>
                </center>
            </div>
    </body>
</html>
