package com.tieacher.beans;

public class Usuario {
	private String nome;
	private String telefone;
	private String email;
	private String password;
	
	public Usuario() 
	{
		this.nome = "";
		this.telefone = "";
		this.email = "";
		this.password = "";
	}
	
	public Usuario(String nome, String telefone, String email, String password) {
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
		this.password = password;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
