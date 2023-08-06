/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CSDL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class Database {
    public static String user = "root";
    public static String pass = "";
    public static String url = "jdbc:mysql://localhost:3306/testhotel";

    public static Connection ConnectDatabase() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
            System.out.println(ex);
            System.out.println(ex);
        }
        return conn;
    }

    public static void main(String[] args) {
        Connection cnn = ConnectDatabase();
        if (cnn != null) {
            System.out.println("Thành công");
        } else {
            System.out.println("Thất bại");
        }
    }
}