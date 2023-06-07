package co.edu.sena.ficha2687365.models.repository;

import co.edu.sena.ficha2687365.models.User;
import java.sql.SQLException;

public class TestUserRepositoryImpl {

    public static void main(String[] args) throws SQLException {
        Repository<User> repository= new UserRepositoryImpl();

        System.out.println("----- saveOBJ Insert-----");
        User userInsert= new User();
        userInsert.setUser_firstname("Nicolas");
        userInsert.setUser_lastname("Roa");
        userInsert.setUser_email("nico112@yahoo.co");
        userInsert.setUser_password("Ar6ol654");

        repository.saveObj(userInsert);
        userInsert.setUser_firstname("Paula");
        userInsert.setUser_lastname("Bonilla");
        userInsert.setUser_email("pau12@outlook.com");
        userInsert.setUser_password("Mario845");
        repository.saveObj(userInsert);


        System.out.println("----- listAllObj -----");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();


        System.out.println("----- byIdOBJ -----");
        System.out.println(repository.byIdObj(1));
        System.out.println();


        System.out.println("----- deleteOBJ -----");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);


        System.out.println("----- saveOBJ -----");
        User userUpdate =new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("Marcus");
        userUpdate.setUser_lastname("Orange");
        userUpdate.setUser_email("marcu26@gmail.com");
        userUpdate.setUser_password("4515m5a8");
        repository.saveObj(userUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

    }
}
