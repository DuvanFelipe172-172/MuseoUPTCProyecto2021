/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 57320
 */
public class Conexion {
    Connection con ;
    String url="jdbc:oracle:thin:@localhost:1521:mikes";
    String user="ADMIN";
    String pass="oracle";
    public Connection conectar(){
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url,user,pass);
        
        } catch (ClassNotFoundException | SQLException e) {
        }
        return con;
    }
    
}
