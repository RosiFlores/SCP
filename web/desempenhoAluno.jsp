<%-- 
    Document   : desempenhoAluno
    Created on : 06/09/2014, 22:12:49
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
            <h1>Desempenho do Aluno</h1>
            <div>
                <form>
                    Projeto: <input list="projeto" name="projeto">
                    <datalist id="projeto">
                        <option value="Título">

                    </datalist>
                    <br/>
                    Orientador: <input list="orientador" name="orientador">
                    <datalist id="orientador">
                        <option value="Nome Sobrenome">

                    </datalist>
                    <br/>

                    Aluno: <input list="aluno" name="aluno">
                    <datalist id="aluno">
                        <option value="Nome Sobrenome">

                    </datalist>


                </form>
            </div>
            <div name="situacaoAtual">
                <h3>Situação Atual do Projeto</h3>
                <div name="opcoes">
                    <form>
                        <input type="radio" name="situacao" value="comoPrevisto">1- Como Previsto<br/>
                        <input type="radio" name="situacao" value="adiantado">2- Adiantado<br/>
                        <input type="radio" name="situacao" value="atrasado">3- Atrasado<br/>
                        <input type="radio" name="situacao" value="naoIniciado">4- Não Iniciado<br/>
                        <input type="radio" name="situacao" value="concluido">5- Concluído
                    </form>
                </div>
                <div name="caixaJustificativa">
                    <textarea rows="10" cols="30" placeholder="Justificativa (somente para as opções 3 e 4)"></textarea>

                </div>
            </div>
            <div name="avaliacaoOrientador">
                <h3>Avaliação do Orientador sobre o Bolsista</h3>

                <form>
                    1- Cumprimento da carga horária
                    <input type="radio" name="avaliacao" value="ruim">Ruim
                    <input type="radio" name="avalicao" value="regular">Regular
                    <input type="radio" name="avaliacao" value="bom">Bom
                    <input type="radio" name="avaliacao" value="otimo">Ótimo

                </form>
                <form>
                    2- Interesse nas atividades da pesquisa
                    <input type="radio" name="avaliacao" value="ruim">Ruim
                    <input type="radio" name="avalicao" value="regular">Regular
                    <input type="radio" name="avaliacao" value="bom">Bom
                    <input type="radio" name="avaliacao" value="otimo">Ótimo

                </form>
                <form>
                    3- Progresso alcançado
                    <input type="radio" name="avaliacao" value="ruim">Ruim
                    <input type="radio" name="avalicao" value="regular">Regular
                    <input type="radio" name="avaliacao" value="bom">Bom
                    <input type="radio" name="avaliacao" value="otimo">Ótimo

                </form>

            </div>
            <br/><br/>
            <div name="pagamento">
                <form>
                    Pagamento da bolsa: 
                    <input type="radio" name="pagamento" value="sim">Sim
                    <input type="radio" name="pagamento" value="nao">Não<br/>
                    Pagamento referente ao mês: <input list="mes" name="mes" value="Mês">
                    <datalist id="mes">
                        <option value="Janeiro">
                        <option value="Fevereiro">
                        <option value="Março">
                        <option value="Abril"> 
                        <option value="Maio">
                        <option value="Junho">
                        <option value="Julho">
                        <option value="Agosto"> 
                        <option value="Setembro">
                        <option value="Outubro">
                        <option value="Novembro"> 
                        <option value="Dezembro">
                    </datalist>


            </div>
            <div name="comentarios">
                <h3>Comentários e Dificuldades do Bolsista sobre o programa:</h3>
                <textarea rows="10" cols="30"></textarea>
            </div>

            <center>
                   
                    <button class="botao3">
                            <span>Cancelar</span>
                    </button> &nbsp;&nbsp;

                    <button class="botao3">
                            <span>Enviar</span>
                    </button>
            </center>
        </form>
    </div>
</div>
</body>
</html>
