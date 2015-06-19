package Controller;

import DAO.PacienteDAO;
import Model.Paciente;
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


public class CadPacienteController extends HttpServlet implements Command{

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
        String CPF =(request.getParameter("CPF"));
        String CPF_resp =(request.getParameter("CPF_resp"));
        String RG = (request.getParameter("RG"));
        String genero = (request.getParameter("genero"));
        String estado_civil = (request.getParameter("estado_civil"));
        String nome_mae = (request.getParameter("nome_mae"));
        String nome_pai = (request.getParameter("nome_pai"));
        String cor_pele = (request.getParameter("cor_pele"));
        String data_nascimento = (request.getParameter("data_nascimento"));
        String UF_origem = (request.getParameter("UF_origem"));
        String logradouro = (request.getParameter("logradouro"));
        String numero = (request.getParameter("numero"));
        String complemento = (request.getParameter("complemento"));
        
        Paciente pac = new Paciente(nome, CPF, CPF_resp, RG, genero, estado_civil, nome_mae, nome_pai, cor_pele, data_nascimento, UF_origem, logradouro, numero, complemento);
	PacienteDAO dao = new PacienteDAO();	

        try {
            dao.criaPaciente(pac);    
        } catch (SQLException ex) {
            System.out.println(ex);
        }
                
        RequestDispatcher rd = request.getRequestDispatcher("/menu.html");  
        rd.forward(request,response); 
        //session.setAttribute("flag",true);
        
        //response.sendRedirect("index.html");
                
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
