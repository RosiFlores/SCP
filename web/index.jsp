<%-- 
    Document   : menu
    Created on : 06/09/2014, 17:19:30
    Author     : Mayara Amanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="default.css" media="all" />
        <title>SCP - Sistema de Controle de Projetos</title>
		
                <style type="text/css">
	<!--
		body {
			padding:0px;
			margin:0px;
		}
 
		#menu ul {
			padding:0px;
			margin:0px;
			float: left;
			width: 100%;
			background-color:#EDEDED;
			list-style:none;
			font:80% Tahoma;
		}
 
		#menu ul li { display: inline; }
 
		#menu ul li a {
			background-color:#EDEDED;
			color: #333;
			text-decoration: none;
			border-bottom:3px solid #EDEDED;
			padding: 2px 10px;
			float:left;
		}
 
		#menu ul li a:hover {
			background-color:#D6D6D6;
			color: #6D6D6D;
			border-bottom:3px solid #EA0000;
		}
	-->
	</style>
    </head>
    <body>
        <center>
            
                <div id="menu">
                        <ul>
                            <li><a href="sobre.jsp" target="iframe">Início</a></li>
                                <li><a href="index2.jsp" target="iframe">Cadastrar</a></li>
                                <li><a href="index1.jsp" target="iframe">Pesquisar</a></li>
                                <li><a href="index.jsp" >Sair</a></li>
                                
                        </ul>
                </div>

                <div id='iframe'>
                   <iframe name="iframe" id="iframe" width="1000" height="600" frameborder="3" src="sobre.jsp"></iframe>

            </div>
        </center>

    </body>
</html>