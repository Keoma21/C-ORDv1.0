/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.cord.dal;
import java.sql.*;

/**
 *
 * @author Keoma
 */
public class ModuloConexao {
    public static Connection conector(){
        java.sql.Connection conexao = null;
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/cord?characterEncoding=utf-8";
        String user = "dba";
        String password = "Cord@123456";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
            
            
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
            
    }
}
