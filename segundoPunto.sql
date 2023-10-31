CREATE DATABASE 2_1DATOSDEBASEsegundoPunto;

USE 2_1DATOSDEBASEsegundoPunto; 

CREATE TABLE if NOT EXISTS cliente(
    cliente_id INT
);

CREATE TABLE if NOT EXISTS pedido(
    pedido_id INT
);
CREATE TABLE if NOT EXISTS producto(
    id_producto INT
);
CREATE TABLE if NOT EXISTS pagos(
    id_pagos INT
);
CREATE TABLE if NOT EXISTS estado_pedido(
    id_estadoP INT
);
CREATE TABLE if NOT EXISTS metodo_pago(
    id_metodoPago INT
);
CREATE TABLE if NOT EXISTS factura(
    id_factura INT
);
CREATE TABLE if NOT EXISTS proveedor(
    id_proveedor INT
);

CREATE TABLE if NOT EXISTS pedidos_pendientes(
    id_pedidos INT
);
CREATE TABLE if NOT EXISTS inventario(
    id_inventario INT
);

-- AGREGANDO ENTIDADES--
ALTER TABLE cliente ADD nombre VARCHAR(80) NOT NULL, ADD apellido VARCHAR(50) NOT NULL,
    ADD telefono VARCHAR(20) NOT NULL,
    ADD email VARCHAR(50) NOT NULL,
    ADD direccion VARCHAR(50) NOT NULL,
    ADD identificacion BIGINT NOT NULL;

ALTER TABLE pedido add fecha DATETIME NOT NULL,
ADD cliente_id BIGINT NOT NULL,
ADD estatoPedido_id BIGINT NOT NULL,
ADD producto_id BIGINT NOT NULL,
ADD cantidad BIGINT NOT NULL;

ALTER TABLE producto add nombre VARCHAR(50) NOT NULL,
ADD proveedor_preferido BIGINT NOT NULL,
ADD color BIGINT NOT NULL,
ADD tallas BIGINT NOT NULL;

ALTER TABLE estado_pedido ADD nombre VARCHAR(50) NOT NULL; 

ALTER TABLE metodo_pago ADD nombre VARCHAR(255) NOT NULL, 
ADD descripcion TEXT NOT NULL;

ALTER TABLE factura ADD fecha DATETIME NOT NULL,
ADD clienteID INT NOT NULL,
ADD detalles VARCHAR(255) NOT NULL,
ADD Pedido_id BIGINT NOT NULL;

ALTER TABLE proveedor ADD nombre VARCHAR(50) NOT NULL,
ADD direccion VARCHAR(80) NOT NULL,
ADD email VARCHAR(20) NOT NULL,
ADD telefono VARCHAR(10) NOT NULL;

ALTER TABLE pedidos_pendientes ADD producto_id BIGINT NOT NULL,
ADD cantidad INT NOT NULL,
ADD proveedor_id INT NOT NULL,
ADD fecha DATETIME NOT NULL;

ALTER TABLE inventario ADD producto_id BIGINT NOT NULL,
ADD cantidad DOUBLE(8, 2) NOT NULL,
ADD provedorID BIGINT NOT NULL;

-- AGREGANDO PRIMARY KEYS--

ALTER TABLE cliente ADD PRIMARY KEY (cliente_id);
ALTER TABLE pedido ADD PRIMARY KEY (pedido_id);
ALTER TABLE producto ADD PRIMARY KEY (id_producto);
ALTER TABLE estado_pedido ADD PRIMARY KEY (id_estadoP);
ALTER TABLE metodo_pago ADD PRIMARY KEY (id_metodoPago);
ALTER TABLE factura ADD PRIMARY KEY (id_factura);
ALTER TABLE proveedor ADD PRIMARY KEY (id_proveedor);
ALTER TABLE pedidos_pendientes ADD PRIMARY KEY (id_pedidos);
ALTER TABLE inventario ADD PRIMARY KEY (id_inventario);

-- AGREGANDO CLAVES UNICAS 

ALTER TABLE cliente ADD CONSTRAINT clienteIdentificacionUnique UNIQUE(identificacion);
ALTER TABLE proveedor ADD CONSTRAINT proveedorNombreUnuque UNIQUE(nombre);
show TABLES;  