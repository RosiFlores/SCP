<%-- 
    Document   : avaliacaoFinal
    Created on : 09/09/2014, 21:31:35
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
        <h2>Avaliação Final</h2>
        
        <form>
            <p>Avaliação final do ano <input type="text" name="ano"> referente à chamada:</p>
            <p>Agência<input list="agencia" name="agencia"></p>
            <datalist id="agencia">
                <option value="Agência">
            </datalist>
            <p>Bolsista:<input list="bolsista" name="bolsista"></p>
            <datalist id="bolsista">
                <option value="Nome Sobrenome">
            </datalist>
            <p>Projeto: <input list="projeto" name="projeto"></p>
            <datalist id="projeto">
                <option value="Título">
            </datalist>
            
              <label> Publicou resusltados em eventos científicos? Anexar comprovantes.</br>
                <label for="sim"><input type="radio" name="publicacao" id="sim"value="sim">Sim</label>
                <label for="nao"><input type="radio" name="publicacao" id="nao"value="nao">Não</label></br>
                </label>
                <label><input type="checkbox" name="dentro" valeu="dentro">Dentro da Instituição</label>
                <label><input type="checkbox" name="fora" valeu="fora">Fora da Instituição</br></label>
                <label><input type="checkbox" name="locais" valeu="locais">Locais</label>
                <label><input type="checkbox" name="regionais" valeu="regionais">Regionais</label>
                <label><input type="checkbox" name="nacionais" valeu="nacionais">Nacionais</label>
                <label><input type="checkbox" name="internacionais" valeu="internacionais">Internacionais</label></br>
                
                <label>Participou de publicação de resultados em periódicos indexados e/ou com corpo editorial? Anexar comprovantes.</br>
                    <label for="sim"><input type="radio" name="publicacao" id="sim"value="sim">Sim</label> 
                    <label>Periódico<input type="text" name="periodico"></label></br>
                <label for="nao"><input type="radio" name="publicacao" id="nao"value="nao">Não</label></br>
                </label>
             <label>Avaliação do Bolsista pelo Orientador:</br><textarea rows="4" cols="50"></textarea> </label></br>
                <label>Avaliação do subcomitê assessor:</br><textarea rows="4" cols="50"></textarea> </label></br>
        </form>
        
         <br/><br/><button>
                            <span>Cancelar</span>
                        </button> &nbsp;&nbsp;

                        <button>
                            <span>Enviar</span>
                        </button>
        
        </div>
    </body>
</html>
