package co.edu.sena.ficha2687365.servlets;

import co.edu.sena.ficha2687365.models.Product;
import co.edu.sena.ficha2687365.models.repository.ProducRepositoryImpl;
import co.edu.sena.ficha2687365.models.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

@WebServlet("/registerProduct")
public class ProductRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String product_name=request.getParameter("product_name");
        BigDecimal product_value=BigDecimal.valueOf(Long.parseLong( request.getParameter("product_value")));
        Integer category_id= Integer.valueOf(request.getParameter("category_id"));

        Product product=new Product(product_name,product_value,category_id);

        Repository<Product> repository=new ProducRepositoryImpl();
        int rows=0;
        try {
            rows= repository.saveObj(product);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        String Mensage=null;
        if (rows==0){
            System.out.println("Ocurrio un error");
        }else {
            System.out.println("Registro Exitoso");
        }
    }
}
