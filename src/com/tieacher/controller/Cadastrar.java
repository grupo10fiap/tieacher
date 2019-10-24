package com.tieacher.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tieacher.BO.UsuarioBO;
import com.tieacher.beans.Usuario;

@WebServlet("/Cadastrar")
public class Cadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Cadastrar() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String nome = request.getParameter("nome");
	     String senha = request.getParameter("senha");
	     String email = request.getParameter("email");
	     String telefone = request.getParameter("telefone");
	     Usuario usu = new Usuario(nome, telefone, email, senha);
	     UsuarioBO usuarioBo = new UsuarioBO();
	     try {
	    	 usuarioBo.cadastrarUsuario(usu);
	     }catch(Exception ex){
	    	 
	     }
	     response.setContentType("text/html");
			RequestDispatcher dispatcher = request.getRequestDispatcher("Index.jsp");
			dispatcher.forward(request, response);
	}

}
