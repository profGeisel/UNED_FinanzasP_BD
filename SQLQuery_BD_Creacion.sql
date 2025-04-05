CREATE DATABASE dbFinanzasG
go

USE dbFinanzasG

CREATE TABLE tblTipoMovimiento (id_tMovimiento INT PRIMARY KEY IDENTITY (1,1) ,
tMovimiento VARCHAR(8) NOT NULL)

CREATE TABLE tblPresupuesto (id_presupuesto INT  PRIMARY KEY IDENTITY (1,1),
montoPropuesto DECIMAL (10,2) NOT NULL,id_categoria int NOT NULL,
constraint fk_Catpre foreign key(id_categoria) references tblPresupuesto(id_categoria))

CREATE TABLE tblProveedores (id_proveedor int PRIMARY KEY IDENTITY (1,1) , 
proveedor VARCHAR (25) NOT NULL);

CREATE TABLE tblMonedas (id_moneda INT PRIMARY KEY IDENTITY (1,1) , 
nomMoneda VARCHAR(25) NOT NULL);

CREATE TABLE tblUsuarios (id_usuario INT PRIMARY KEY IDENTITY (1,1) , 
contrasena VARCHAR (500) NOT NULL, 
nom_usuario VARCHAR (15) NOT NULL, 
ap1_usuario VARCHAR (15) NOT NULL, 
ap2_Usuario VARCHAR (15) NOT NULL,
correoElectronico VARCHAR(320) NOT NULL);

CREATE TABLE tblCuentas (id_Cuenta INT PRIMARY KEY IDENTITY (1,1) , 
numCuenta VARCHAR(32) NOT NULL, 
saldo DECIMAL (10,2) NOT NULL, 
id_Proveedor INT NOT NULL, 
id_moneda INT NOT NULL,
activa BIT NOT NULL, 
id_usuario int NOT NULL,
constraint fk_proCue foreign key(id_Proveedor) references tblProveedores(id_proveedor),
constraint fk_proMon foreign key(id_moneda) references tblMonedas(id_moneda),
constraint fk_proUsu foreign key(id_usuario) references tblUsuarios(id_usuario))

CREATE TABLE tblCategorias (id_Categoria INT PRIMARY KEY IDENTITY (1,1)  NOT NULL, 
nomCategoria VARCHAR(25) NOT NULL, 
id_tMovimiento INT NOT NULL
constraint fk_tMovCat foreign key(id_tMovimiento) references tblTipoMovimiento(id_tMovimiento))


CREATE TABLE tlbRegistro (id_registro INT PRIMARY KEY IDENTITY (1,1)  , 
fecha DATE NOT NULL, 
descripcion VARCHAR (60) NOT NULL, 
comprobante INT  NOT NULL,
monto DECIMAL (10,2) NOT NULL, 
id_categoria INT NOT NULL, 
id_cuenta INT NOT NULL,
constraint fk_RegCat foreign key(id_categoria) references tblCategorias(id_categoria),
constraint fk_RegCue foreign key(id_cuenta) references tblCuentas(id_cuenta))






