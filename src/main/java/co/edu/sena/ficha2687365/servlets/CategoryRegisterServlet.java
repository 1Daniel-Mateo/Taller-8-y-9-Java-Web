package co.edu.sena.ficha2687365.servlets;

import co.edu.sena.ficha2687365.models.Category;
import co.edu.sena.ficha2687365.models.repository.CategoryRepositoryImpl;
import co.edu.sena.ficha2687365.models.repository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/registerCategory")
public class CategoryRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category_name=request.getParameter("category_name");

        Category category=new Category(category_name);

        Repository<Category> repository=new CategoryRepositoryImpl();
        int rows=0;
        try {
            rows= repository.saveObj(category);
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

