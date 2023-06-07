package co.edu.sena.ficha2687365.connection_test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BasicConnectionSingleton {
    private static String url="jdbc:mysql://localhost:3306/my_app?serverTimezone=America/Bogota";
    private static String user="Mateo";
    private static String pass="arbol325";
    private static Connection conn;

    public static Connection getInstace() throws SQLException{
        if (conn==null) {
            conn = DriverManager.getConnection(url, user, pass);
        }

        return conn;
    }
}
