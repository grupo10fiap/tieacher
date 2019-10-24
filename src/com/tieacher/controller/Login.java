package com.tieacher.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tieacher.BO.UsuarioBO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */				
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String email = request.getParameter("email");
	        String senha = request.getParameter("senha");
	        try {
	        	UsuarioBO usuario = new UsuarioBO();
	        	String resposta = usuario.validarLoginUsuario(email, senha);
	        	if(resposta == "OK")
	        	{
	    			RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
	        		response.setContentType("text/html");
	    			dispatcher.forward(request, response);
	        	}
	        	request.setAttribute("errorMsg", resposta);
	            request.getRequestDispatcher("Index.jsp").forward(request, response); 
	        }catch(Exception ex){
	        	
	        }
	        
	        

	}

}
