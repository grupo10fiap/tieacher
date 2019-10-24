package com.tieacher.DAO;

import java.sql.Connection;

import java.sql.DriverManager;

public class DaoUtils {
	
	public static Connection queroConexao() throws Exception{
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/tieacher?useSSL=false", 
				"root", 
				"root");
	}
}
