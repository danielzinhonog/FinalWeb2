<!DOCTYPE html>
<%@page import = "java.util.List"%>
<%@page import = "modelo.Usuario"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/stylehome.css" rel="stylesheet">
    <title>Home</title>
</head>

<body>
    <header>
        <img src="imagem/logo.png" class="logo">
        <ul>
            <li>Home</li>
            <li>Serviços</li>
            <li>Quem Somos</li>
            <li>Contato</li>
        </ul>
        <div class="logincadastro">
            <p><a href="LogoutServlet">Logout</a></p> <p>|</p> <p><a href="cadastro.jsp">Cadastro </a></p>
        </div>
    </header>
    <div class="conteudo">
    	
    	<%
    		List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
    	%>
    	
    	<table border = 1>
    		<tr>
    			<td>USUÁRIO</td>
    			<td>HOME</td>
    			<td>EMAIL</td>
    		</tr>
    		
    		<%
    			for(Usuario usuario: lista){
    				out.write("<tr>");
    				out.write("<td>" + usuario.getUsuario() + "</td>");
    				out.write("<td>" + usuario.getNome() + "</td>");
    				out.write("<td>" + usuario.getEmail() + "</td>");
    				out.write("</tr>");
    			}
    		%>
    	</table>
    </div>
    <div class="rodape">Copyright &copy 2023</div>
</body>