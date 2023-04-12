<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro</title>
        <link rel="stylesheet" type="text/css" href="css/stylecadastro.css">
    </head>
    <body>
        <section>
            <div class="form-box">
                <img src="imagem/logo2.png" alt="logo">
                <div class="form-value">
                     <form method="post" action="CadastroUsuarioServlet">
                        <h2>Cadastro</h2>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input placeholder="Email" type="text" id="email" name="email">
                            <label for="">E-mail</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="person-outline"></ion-icon>
                            <input placeholder="Usuario" type="text" id="username" name="username">
                            <label for="">Nome de Usuário</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input placeholder="Senha" type="password" id="password" name="password">
                            <label for="">Senha</label>
                        </div>
                        <button>Cadastrar</button>
                        <div class="register">
                            <p>Já Possui uma Conta? <a href="login.jsp">Logar-se</a></p>
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