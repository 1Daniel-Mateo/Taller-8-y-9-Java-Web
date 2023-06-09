# TALLER 8 Y 9 JAVA WEB

###### Autor: Daniel Mateo Suarez Alvarez
###### Ficha 2687365 DEL PROGRAMA ADSO SENA

## MVC

### DESCRIPCIÓN

##### VISTA

se enfoco en crear la pagina de login como pagina principal con extencion jsp, que esta enlazada con los formularios de registro de usuario, registro categoria y registro de producto.

tambien agregan unos include como plantillas predefinidas que nosotros mismo creamos.

##### MODELO Y CONECCION

###### Connecion

En este taller trabajamos el concepto de unir base de datos de SQL con el lenguaje de java, en este programa se crearon 4 clases en java las cuales son ConnectionBasic, ConnectionBasicWithResources, UseBasicConnectionSingleton y UseConnectionPool

###### Modelo
El taller trabaja en las coneciónes entre el lenguaje java y base de datos; sin embargo en esta ocación se mostraran los datos almacenados en la tabla users_tbl, se mostraran todos los datos guardados en el id de cada fila y exectauando la contraseña.

Aqui nos llaman los datos de id, nombre, apellido, correo y una contraseña null.

##### CONTROLADOR

En este proyecto trabajaramos con la clase servlet que sera nuestra clase controlador, se usa para peticiones como registrar o logear a un usuario, trabajamos con el metodo post para mayor seguridad al nos ser un texto plano y que nosotros empleamos para el desarrollo web.

![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/266a06b1-94f8-435d-8bc2-9881100301fd)

Tambien se crea los impl como modelo que llama a la conección de base de datos.

![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/12cb1fb7-09fe-428e-95fa-2ea0ecd148a0)
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/527cebeb-f046-4596-9193-bb67680038e6)
Y la vista donde nosotros realizamos el registro.
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/70bc0c9f-6bfd-4459-af86-4184486024dc)
Tabla con los datos registrados
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/29e4042a-faa6-456a-92f5-6d69329162fc)

Ahora agregamos el Forward y Redirection en los cuales usamos el metodo get para mayor seguridad

Forward = Sera para que ocultemos la informacion de la ubicacion y el tipo archivo que estamos manejando en la pagina unicamente mostrando su nombre asignado por el get

Redirection = Operación en la que el servidor envía una respuesta especial al usuario con una URL a la que debe dirigirse,

### FUNCIONAMIENTO 

#### funcionamiento de coneccion

El programa se trata de llamar bases de datos en heidiSQL, primeramente creamos la bases de datos llamada my_app en la cual se ubica la tabla users_tbl donde tenemos los datos de el id del usuario, nombre de usuario, el apellido, correo y la contraseña.

*la coneccion base de datos sql de la tabla usuarios*
```java
package com.example.project2687365.models;

public class User {
    private Integer user_id;
    private String user_firstname;

    private String user_lastname;
    private String user_email;
    private String user_password;

    public User() {

    }

    public User(Integer user_id, String user_firstname, String user_lastname, String user_email, String user_password) {
        this.user_id = user_id;
        this.user_firstname = user_firstname;
        this.user_lastname = user_lastname;
        this.user_email = user_email;
        this.user_password = user_password;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_firstname() {
        return user_firstname;
    }

    public void setUser_firstname(String user_firstname) {
        this.user_firstname = user_firstname;
    }

    public String getUser_lastname() {
        return user_lastname;
    }

    public void setUser_lastname(String user_lastname) {
        this.user_lastname = user_lastname;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_firstname='" + user_firstname + '\'' +
                ", user_lastname='" + user_lastname + '\'' +
                ", user_email='" + user_email + '\'' +
                ", user_password='" + user_password + '\'' +
                '}';
    }
}
```

##### Encriptado y desincriptado
![encriptado y desencritado](https://user-images.githubusercontent.com/126428837/236576559-ea6c5306-e397-4b48-af74-c27ea51324ed.png)

Tras crear la tabla la importamos la base de datos a Intellig Idea, se crea las conecciones, entre la base datos y en java los cuales estos contendran al usuario principal que sera Mateo y la clave Mateo123.

##### Conección Singleton
![coneccion singleton](https://user-images.githubusercontent.com/126428837/236576971-e67dcf7d-85d5-4f66-a133-1e7654da15aa.png)

##### Conección Recursos
![coneccion recursos](https://user-images.githubusercontent.com/126428837/236577065-d73b2552-09f0-44c5-b358-29ea070abd3c.png)

##### Conección Pool
![coneccion pool](https://user-images.githubusercontent.com/126428837/236577158-a390eafc-77e8-4c0d-ac02-b0cc31f88453.png)

##### Conección Basica
![coneccion basica](https://user-images.githubusercontent.com/126428837/236577555-c4f5af08-779e-49cf-9b4c-c4415280f68d.png)

y el enlace jdbc:mysql://localhost:3306/my_app?serverTimezone=America/Bogota, para enlazar la tabla.


<<<<<<< HEAD
#### funcionamiento de modelo

El programa se trata de llamar bases de datos en heidiSQL, primeramente creamos la bases de datos llamada my_app en la cual se ubica la tabla users_tbl donde tenemos los datos de el id del usuario, nombre de usuario, el apellido, correo y la contraseña.


##### ingreso
![ingreso](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/b1d6bf30-9a48-492b-b2c9-5112c833ae34)
Tambien hay que agregar un usuario a la bases de datos en heidiSQL y el cual tendra control de todas las credenciales y priviligios de bases de datos.

enlace para crear usuario en base datos:https://www.youtube.com/watch?v=wOC5Vq8y19U

El usuario es Mateo y la contraseña es arbol325

##### Encriptado y desincriptado

![encriptado y desencritado](https://user-images.githubusercontent.com/126428837/236576559-ea6c5306-e397-4b48-af74-c27ea51324ed.png)

Tras crear la tabla la importamos la base de datos a Intellig Idea, se crea las conecciones, entre la base datos y en java los cuales estos contendran al usuario principal que sera Mateo y la clave Mateo123.

##### Conección Pool
![coneccion pool](https://user-images.githubusercontent.com/126428837/236577158-a390eafc-77e8-4c0d-ac02-b0cc31f88453.png)
=======
######ENLACE DE DEMOSTRACION DE FUNCIONAMIENTO DEL PROYECTO:https://youtu.be/mNQD3Ezv2dc
>>>>>>> e3c8ca5d600ae0f45cd18b9a35a7883fecf5b3a8

Usaremos la conection pool para que nos llama bien la tabla SQL y que no tenga problemas en la ejecucion.


#### funcionamiento de controlador

#### Repository, Test y User

##### Repository
![Repositorio](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/d1e0b56c-6a08-4d7b-a57c-1c934b93f44f)
Aqui crearemos campos vacios de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) y agregando una lista para que nos invoque una lista de datos y el tipo de clase de java sera un implement.

##### UserRepositoryImpl
![list](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/43531073-180f-4f28-b9f5-268afd332347)
![leer](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/140ab606-df07-4600-bea4-5a7aedb84c78)
![guardar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/04da1d9e-d652-41b9-b72d-db10b517a0de)
![eleminar y crear](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/8cb7352c-fbfd-412b-ae36-7e7ddc457de0)
Aqui en los campos de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) en donde invocaran las variables de la conección pool que seran implementados en repository.
try(Connection conn= ConnectionPool.getConnection();
PreparedStatement ps= conn.prepareStatement(sql));

##### TestRepositoryImpl
Crearemos el TestRepositoryImpl en este invocaremos y ejecutaremos los metodos almacenados en el UserRepositoryImpl.

![Insertar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/f3313d56-f0f1-4ff1-92e2-c5f58c80ee8a)
![save](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/887a322d-0b2f-4fd7-99fe-55d6ccc4fbb7)
![byObj](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/3e601efd-498c-47bc-8d23-bee7e940be26)
![delete](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/21621239-1808-4830-9930-1189e12981f0)
![lista](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/201df692-6084-469d-81a8-1bfc049096d7)

##### funcionamiento de controlador

doPOST=Son los que se usan para trabajar los metodos requets y reponse, trabaja con metodos declarados.
se define el metodo que transmite datos de una pagina a otra.


###### Enlace de video demostracion:https://youtu.be/mNQD3Ezv2dc

Usaremos la conection pool para que nos llama bien la tabla SQL y que no tenga problemas en la ejecucion.

#### Repository, Test y User

##### Repository
![Repositorio](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/d1e0b56c-6a08-4d7b-a57c-1c934b93f44f)
Aqui crearemos campos vacios de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) y agregando una lista para que nos invoque una lista de datos y el tipo de clase de java sera un implement.

##### UserRepositoryImpl
![list](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/43531073-180f-4f28-b9f5-268afd332347)
![leer](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/140ab606-df07-4600-bea4-5a7aedb84c78)
![guardar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/04da1d9e-d652-41b9-b72d-db10b517a0de)
![eleminar y crear](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/8cb7352c-fbfd-412b-ae36-7e7ddc457de0)
Aqui en los campos de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) en donde invocaran las variables de la conección pool que seran implementados en repository.
try(Connection conn= ConnectionPool.getConnection();
PreparedStatement ps= conn.prepareStatement(sql));

##### TestRepositoryImpl
Crearemos el  TestRepositoryImpl en este invocaremos y ejecutaremos los metodos almacenados en el UserRepositoryImpl.
![Insertar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/f3313d56-f0f1-4ff1-92e2-c5f58c80ee8a)
![save](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/887a322d-0b2f-4fd7-99fe-55d6ccc4fbb7)
![byObj](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/3e601efd-498c-47bc-8d23-bee7e940be26)
![delete](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/21621239-1808-4830-9930-1189e12981f0)
![lista](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/201df692-6084-469d-81a8-1bfc049096d7)

#### CATEGORIA Y PRODUCTOS

Son las tablas en las cuales nosotros trabajamos almacenamos los datos.
![image](https://github.com/1Daniel-Mateo/Taller-6-Java-Web/assets/126428837/f03899e7-fc50-4f0d-81d5-5d02bc88f79e)
![image](https://github.com/1Daniel-Mateo/Taller-6-Java-Web/assets/126428837/a6abec67-3e84-4e07-8b9a-11d3727449ec)

#### FORWARD Y REDIRECTION

Forward= Oculta el enlace y el tipo de archivo en el que se esta como medida de seguridad

1. Codigo servlet del programa en donde hacemos forward, hacemos el Web servlet, los Http y llamamos al archivo.
![img.png](img.png)
2. URL MODIFICADA que solo nos muestra el nombre que asignamos.
![img_1.png](img_1.png)
![img_3.png](img_3.png)
3. Este lo agregamos desde el enlace del index principal y comprobamos el cambio en el enlace
![img_2.png](img_2.png)
![img_4.png](img_4.png)

Redirection= Es la herramienta que no redirige a una URL especial a la que debe dirigirse el usuario 

1. Codigo Servlet de redireccion que es similar al de forward solo que nos envia a una URL especifica

![img_5.png](img_5.png)
Enlace de la redireccion

![img_6.png](img_6.png)
nombre modificado

![img_7.png](img_7.png)
2. Enlace en el Index principal

![img_8.png](img_8.png)

![img_9.png](img_9.png)
3. Aplicacion en el programa
pagina principal
![img_10.png](img_10.png)
enlace a sena

![img_11.png](img_11.png)

pagina a la que es redireccionada
![img_12.png](img_12.png)

###### Nota

Recomiedo que crees dos carpetas apartir de los dos archivos para que evites algun conflicto con los otros servlets que son para el funcionamiento del programa
Aqui una muestra de ejemplo de como deberia de estar organizado.

![img_13.png](img_13.png)

Uno para Forward

![img_14.png](img_14.png)

Uno para Rediretion

![img_15.png](img_15.png)

### INSTALACIÓN

1. Descargarlo como archivo comprimido.
2. Descomprime y guarda la carpeta
3. Abre Intellig Idea y abre la carpeta.
4. Activa el xampp, puedes abrir los archivos de heidi(Recomendacion descargar e instarlar el programa y crear usuario en base datos :https://www.youtube.com/watch?v=wOC5Vq8y19U)o en su defecto el script en para que lo copies e instancies el usuario como "Mateo" y contraseña"arbol325"(son los datos que estan guardados en la conección pool).
5. Llama a la base de datos y instanciala con los dos datos del paso 4.

```SQL
CREATE DATABASE IF NOT EXISTS `my_app`;
USE `my_app`;

CREATE TABLE IF NOT EXISTS `users_tbl`
(
    `user_id`        int(11) NOT NULL AUTO_INCREMENT,
    `user_firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_lastname`  varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_email`     varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_password`  varbinary(255)                                               DEFAULT NULL,
    PRIMARY KEY (`user_id`) USING BTREE
);

create table category_tbl
(
    category_id   int auto_increment primary key not null,
    category_name varchar(50)                    not null
);
create table product_tbl
(
    product_id    int auto_increment primary key not null,
    product_name  varchar(50)                    not null,
    product_value decimal                        not null,
    category_id   int                            not null
);
alter table
    product_tbl
    add foreign key (category_id) references category_tbl (category_id);
INSERT INTO category_tbl
select *
from (values (null)) alias;

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('willy'), UPPER('luca'), LOWER('drogo@gmail.com'),
        AES_ENCRYPT('vendedores', '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122'));

SELECT *,
       CAST(AES_DECRYPT(user_password, '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122')
           AS CHAR(50)) end_data
FROM users_tbl
WHERE user_id = 1;



SELECT *
FROM users_tbl;
```
###### Nota

Cuando llames a la base de datos de acuerdo al gestor de bases de datos puede ser MariaDB para heidi o MySQL si trabajas con MySQL Worprech.

#### EJECUCION

Ya una vez hecha la instalacion y configurado y comprobado el funcionamiento este debera ser el resultado final.


#### ERRORES COMUNES

Estos son los errores que se presentaron durante el proceso de desarrollo.

1. Revisa que las instrucciones esten bien ingresadas, es decir que esten bien digitados que no falte ni una coma ni punto.
2. No olvides que tienes que encriptar la clave para mayor seguridad.
3. Asegurate que las instrucciones de la tabla esten bien digitadas.
4. En caso de que la no sirva el editor de base de datos te sugiero que busques alternativas como lo pueden ser heidiSQL, Worprech, DBaver o Oracle.
5. Cuando crees un nuevo impl recuerda tener cabiados los (u) por la letra que usen deacuerdo a categoria y producto.

Gracias por su atencion, que tengan buen día.



