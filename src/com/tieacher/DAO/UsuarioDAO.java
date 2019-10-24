/**
 * Essa classe contém todas as querys e inteligência para acesso a dados
*/
package com.tieacher.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tieacher.beans.Usuario;

public class UsuarioDAO {
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	public UsuarioDAO() throws Exception{
		con = DaoUtils.queroConexao();
	}
	
	/**
	 * O metodo a seguir busca o usuario pelo seu id retornando um objeto vazio caso não ache
	*/
	public Usuario getUsuario(int cod) throws Exception { 
		stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE ?=?");
		stmt.setString(1, "ID_USUARIO");
		stmt.setInt(2, cod);
		rs = stmt.executeQuery();
		if (rs.next()) {
			return new Usuario(
					rs.getString("NM_USUARIO"),
					rs.getString("NM_TELEFONE"),
					rs.getString("DS_EMAIL"),
					rs.getString("DS_SENHA")
					);
		}
		return new Usuario();
	}
	/**
	 * O metodo a seguir busca o usuario pelo seu email retornando um objeto vazio caso não ache
	*/
	public Usuario getUsuarioByEmail(String email) throws Exception { 
		stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE ?=?");
		stmt.setString(1, "DS_EMAIL");
		stmt.setString(2, email);
		rs = stmt.executeQuery();
		if (rs.next()) {
			return new Usuario(
					rs.getString("NM_USUARIO"),
					rs.getString("NM_TELEFONE"),
					rs.getString("DS_EMAIL"),
					rs.getString("DS_SENHA")
					);
		}
		return new Usuario();
	}
	
	public boolean validarExistenciaUsuario(String email) throws Exception{
		stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE DS_EMAIL = ?");
		stmt.setString(1, email);
		rs = stmt.executeQuery();
		if (rs.next()) {
			return true;
		}
		return false;
	}

	public int apagarUsuario(int cod) throws Exception{
		stmt = con.prepareStatement
("delete from USUARIO WHERE ID_USUARIO=?");
		stmt.setInt(1, cod);
		return stmt.executeUpdate();
	}
	
	public void fechar()throws Exception{
		con.close();
	}
	
	public int cadastrarUsuario(Usuario usu) throws Exception {
		stmt = con.prepareStatement
				("INSERT INTO USUARIO" 
						+" (NM_USUARIO, DS_SENHA, DS_LOGIN, DS_EMAIL, NM_TELEFONE)"
						+" VALUES (?,?,?,?,?)");
		stmt.setString(1, usu.getNome());
		stmt.setString(2, usu.getPassword());
		stmt.setString(4, usu.getEmail());
		stmt.setString(5, usu.getTelefone());
		return stmt.executeUpdate();
	}
}
