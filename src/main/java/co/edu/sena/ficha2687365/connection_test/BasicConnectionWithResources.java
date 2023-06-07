package co.edu.sena.ficha2687365.connection_test;

import java.sql.*;

public class BasicConnectionWithResources { //Para probar y optimizar conectividad local
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/my_app?serverTimezone=America/Bogota";
        String username = "Mateo";
        String password = "arbol325";

        String sql = "SELECT * FROM my_app.users_tbl";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql))
        {
            while (rs.next()) {

                System.out.println(rs.getString("user_firstname"));

                System.out.println(rs.getString("user_lastname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } // end try-catch
    } // main
} // BasicConnectionWithResources
