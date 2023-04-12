package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import servicos.UsuarioServicos;

@WebServlet("/CadastroUsuarioServlet")
public class CadastroUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public CadastroUsuarioServlet() {
        super();   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		UsuarioServicos servico = new UsuarioServicos();
		
		usuario.setUsuario(request.getParameter("username"));
		usuario.setSenha(request.getParameter("password"));
		usuario.setEmail(request.getParameter("email"));
		
		servico.incluirUsuario(usuario);
		
		response.sendRedirect("home.jsp");
	}
}