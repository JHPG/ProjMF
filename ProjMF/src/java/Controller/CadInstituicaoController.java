package Controller;

import DAO.InstituicaoDAO;
import Model.Instituicao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class CadInstituicaoController extends HttpServlet implements Command{

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        
        //HttpSession sessao = request.getSession(true);        
        //int idPaciente = Integer.parseInt(request.getParameter("idPaciente"));
        //int idPaciente = 0;
        String nome = request.getParameter("nome");
        String razao_social = request.getParameter("razao_social");
        String CNPJ = request.getParameter("CNPJ");
        String infos_complementares = request.getParameter("infos_complementares");
        
        Instituicao institu = new Instituicao(nome, razao_social, CNPJ, infos_complementares);

        InstituicaoDAO dao = new InstituicaoDAO();

        try {
            dao.criaInstituicao(institu);    
        } catch (SQLException ex) {
            System.out.println(ex);
        }
                
        RequestDispatcher rd = request.getRequestDispatcher("/menu.html");  
        rd.forward(request,response); 
                
        }

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}