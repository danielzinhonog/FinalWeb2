<!DOCTYPE html>
<%@page import = "java.util.List"%>
<%@page import = "modelo.Usuario"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href= "css/stylehome.css" rel="stylesheet">
    <title>Cine Nog</title>
</head>

<body>
	<header>
		<div class="logo"><img src="imagem/logo.png"></div>
		<nav>
			<ul>
				<li><a href="https://boxd.it/mgnLA"><strong><i>FILMES EM CARTAZ</i></strong></a></li>
				<li><a href="https://www.ingresso.com/home?city=itaborai&partnership=home"><strong><i>INGRESSOS E PRECOS</i></strong></a></li>
				<li><a href="#"><strong><i>LOCAIS E HORARIOS</i></strong></a></li>
				<li><a href="#"><strong><i>MINHA CONTA</i></strong></a></li>
				<li><a href="#"><strong><i>SOBRE NOS</i></strong></a></li>
				<li><a href="LogoutServlet"><strong><i>LOGOUT</i></strong></a></li>
			</ul>
		</nav>
	</header>
	<main>
		<div class="banner">
			<h2><i>DESTAQUE DA SEMANA</i></h2>
			<br>
			<p>O REINO DOS COGUMELOS ESTA EM PERIGO!</p>
			<img src="imagem/mario.jpeg">
		</div>
		<section class="horarios">
			<h2><i>PROGRAMACAO</i></h2>
            <p>A gente tenta nao alterar mas, se acontecer alguma coisa importante, essa programacao pode mudar! Fique ligado.</p>
			<ul>
				<li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/marioposter.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>SUPER MARIO BROS.: O FILME</h3>
					<p>Classificacao: Livre</p>
					<p>Duracao: 1h32min</p>
					<ul>
						<li>SALA 1<br><br>14:00 | 16:00 | 18:00</li>
						<li>SALA 2<br><br>15:00 | 17:00 | 19:00</li>
					</ul>
					<button>Comprar ingressos</button> 
				</li>
				<li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/johnwick4.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>JOHN WICK 4: BABA YAGA</h3>
					<p>Classificacao: 16 anos</p>
					<p>Duracao: 2h49min</p>
					<ul>
						<li>SALA 3<br><br>20:30</li>
						<li>SALA 5<br><br>16:30 | 20:00</li>
					</ul>
					<button>Comprar ingressos</button>
				</li>
                <li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/shazam2.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>SHAZAM! FURIA DOS DEUSES</h3>
					<p>Classificacao: 12 anos</p>
					<p>Duracao: 2h10min</p>
					<ul>
						<li>SALA 5<br><br>14:00</li>
					</ul>
					<button>Comprar ingressos</button>
				</li>
                <li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/papa.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>O EXORCISTA DO PAPA</h3>
					<p>Classificacao: 16 anos</p>
					<p>Duracao: 1h43min</p>
					<ul>
						<li>SALA 1<br><br>22:00</li>
						<li>SALA 4<br><br>14:30 | 16:45 | 21:45</li>
					</ul>
					<button>Comprar ingressos</button>
				</li>
				<li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/cocainebear.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>O URSO DO PO BRANCO</h3>
					<p>Classificacao: 18 anos</p>
					<p>Duracao: 1h35min</p>
					<ul>
						<li>SALA 3<br><br>13:20</li>
					</ul>
					<button>Comprar ingressos</button>
				</li>
				<li>
					<div class="flip-card">
						<div class="flip-card-inner">
						  <div class="flip-card-front">
							<img src="imagem/dungeons.jpg" alt="Avatar" style="width:300px;height:420px;">
						  </div>
						</div>
					  </div>
					<h3>DUNGEONS & DRAGONS: HONRA ENTRE REBELDES</h3>
					<p>Classificacao: 12 anos</p>
					<p>Duracao: 2h10min</p>
					<ul>
						<li>SALA 2<br><br>19:30 | 21:00</li>
						<li>SALA 5<br><br>18:30 | 21:30</li>
					</ul>
					<button>Comprar ingressos</button>
				</li>
			</ul>
		</section>
	</main>
    <br><br>
	<%
		List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
	%>
	<h2><i>USUARIOS CADASTRADOS</i></h2>
	<table class="users-table">
	  <thead>
		<tr>
		  <th>Usuario</th>
		  <th>Email</th>
		</tr>
	  </thead>
	  <tbody>
		<%
    			for(Usuario usuario: lista){
    				out.write("<tr>");
    				out.write("<td>" + usuario.getNome() + "</td>");
    				out.write("<td>" + usuario.getUsuario() + "</td>");
    				out.write("<td>" + usuario.getEmail() + "</td>");
    				out.write("</tr>");
    			}
    	%>
		<tr>
		  <td></td>
		  <td></td>
		</tr>
	</tbody>
	</table>
	<br><br>	
	<footer>
		<div class="endereco">Utilizamos seus dados para analisar e personalizar nossos conteudos e anuncios durante a sua navegacao em nosso site e em serviços de terceiros parceiros.</div>
        <div class="telefone">Telefone: (21) 4002-8922 | E-mail: contado@cinenog.com</div>
        <div class="rodape"><strong>Copyright &copy 2023</strong></div>
	</footer>
</body>
</html>