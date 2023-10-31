CREATE DATABASE 2_1DATOSDEBASEsegundoPunto;

USE 2_1DATOSDEBASEsegundoPunto; 

CREATE TABLE cliente(
    cliente_id INT
);

CREATE TABLE pedido(
    pedido_id INT
);
CREATE TABLE producto(
    id_producto INT
);
CREATE TABLE pagos(
    id_pagos INT
);
CREATE TABLE estado_pedido(
    id_estadoP INT
);
CREATE TABLE metodo_pago(
    id_metodoPago INT
);
CREATE TABLE factura(
    id_factura INT
);
CREATE TABLE proveedor(
    id_proveedor INT
);

CREATE TABLE pedidos_pendientes(
    id_pedidos INT
);
CREATE TABLE inventario(
    id_inventario INT
);


show TABLES;  