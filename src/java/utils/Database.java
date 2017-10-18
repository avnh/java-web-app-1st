/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Viet Anh
 */
public class Database {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        String hostName = "localhost";
        String dbName = "webapp";
        String userName = "root";
        String password = "";
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
        String classname = "com.mysql.jdbc.Driver";
        Class.forName(classname);
        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
    }

    public static void closeQuietly(Connection conn) {
        try {
            conn.close();
        } catch (SQLException e) {
        }
    }

    public static void rollbackQuietly(Connection conn) {
        try {
            conn.rollback();
        } catch (SQLException e) {
        }
    }

    

    

}
