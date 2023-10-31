
CREATE DATABASE 2_1DATOSDEBASEprimerPunto;

USE 2_1DATOSDEBASEprimerPunto; 

CREATE TABLE if NOT EXISTS stock(
    id_stock int 
);

CREATE TABLE if NOT EXISTS Libros(
    id_libro int
);
CREATE TABLE if NOT EXISTS Editores(
    id_editor int
);

CREATE TABLE if NOT EXISTS Almacenes(
    id_almacen int
);

CREATE TABLE if NOT EXISTS facturacion(
    id_facturacion int
);
CREATE TABLE if NOT EXISTS clientes(
    id_clientes int
);
CREATE TABLE if NOT EXISTS carrito(
    shopping_cart_ID int
);
CREATE TABLE if NOT EXISTS autor(
    id_autor int
);

ALTER TABLE stock ADD codigo_almacen int NOT NULL,
ADD ISBN_libro int NOT NULL;

ALTER TABLE Libros ADD titulo VARCHAR(20) NOT NULL,
ADD ISBN VARCHAR(20) NOT NULL, ADD fecha DATE NOT NULL,
ADD precio DOUBLE(8,2) NOT NULL, ADD id_autor INT NOT NULL,
ADD id_editor INT NOT NULL;

ALTER TABLE Editores ADD nombre VARCHAR(100) NOT NULL,
ADD apellido VARCHAR(50) NOT NULL, ADD direccion VARCHAR(80) NOT NULL,
ADD numero_telefonico INT NOT NULL, ADD URL VARCHAR(100) NOT NULL;

ALTER TABLE Almacenes ADD codigo DOUBLE(8,2) NOT NULL, ADD direccion VARCHAR(80) NOT NULL, ADD numero_telefonico INT NOT NULL;

ALTER TABLE facturacion ADD direccion_facturacion VARCHAR(80) NOT NULL, ADD direccion_envio VARCHAR(80) NOT NULL, ADD opcion_envio VARCHAR(5) NOT NULL, ADD informacion_pago TEXT NOT NULL, ADD notificacion TEXT NOT NULL;

ALTER TABLE clientes ADD nombre VARCHAR(100) NOT NULL, ADD direccion VARCHAR(80) NOT NULL, ADD id_correo_electronico VARCHAR(50) NOT NULL, ADD numero_telefonico INT NOT NULL, ADD carrito_id INT NOT NULL, ADD facturacion_id INT NOT NULL;

ALTER TABLE carrito ADD cantidad_libros INT NOT NULL, ADD ISBN_ID VARCHAR(20) NOT NULL, ADD copias_libro INT NOT NULL, ADD id_libro INT NOT NULL; 

ALTER TABLE autor ADD nombre VARCHAR(80) NOT NULL, ADD apellido VARCHAR(50) NOT NULL, ADD direccion VARCHAR(50) NOT NULL, ADD URL VARCHAR(80) NOT NULL;