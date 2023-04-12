<!DOCTYPE html>
<html>
    <head>
    	<meta charset="ISO-8859-1">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/stylelogin.css">
    </head>
     <body>
        <section>
            <div class="form-box">
                <img src="imagem/logo2.png" alt="logo">
                <div class="form-value">
                    <form method="post" action="LoginServlet">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="person-outline"></ion-icon>
                            <input placeholder="Usuario" type="text" id="username" name="username">
                            <label for="username">Nome de Usuário</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input placeholder="Senha" type="password" id="password" name="password">
                            <label for="password">Senha</label>
                        </div>
                        <div class="forget">
                            <label for=""><input type="checkbox">Lembrar Senha | <a href="#"><strong>Esqueci a Senha</strong></a></label>
                        </div>
                        <button type="submit" value="Entrar">Entrar</button>
                        <div class="register">
                            <p>Não Possui uma Conta? <a href="cadastro.jsp">Cadastre-se</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script>
            const form = document.querySelector('form');
            form.addEventListener('submit', (event) => {
                event.preventDefault();
                window.location.href = form.action;
            });
        </script>
        
    </body>
</html>