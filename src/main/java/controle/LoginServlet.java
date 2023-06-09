package controle;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Usuario;
import servicos.UsuarioServicos;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuario = new Usuario();
		HttpSession session = request.getSession();
		
		System.out.println("usuario " + request.getParameter("username"));
		System.out.println("usuario " + request.getParameter("password"));
		
		usuario.setUsuario(request.getParameter("username"));
		usuario.setSenha(request.getParameter("password"));
		
		UsuarioServicos servico = new UsuarioServicos();
		
		System.out.println("validacao " + servico.verificarUsuario(usuario));
		if(servico.verificarUsuario(usuario)){
			List<Usuario> lista = servico.listarUsuario();
			session.setAttribute("lista", lista);
			System.out.println("lista lida --> " + lista.get(0).getNome());
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("home.jsp");
		}
	}
}