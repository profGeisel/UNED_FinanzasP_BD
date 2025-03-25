CREATE DATABASE dbFinanzasG
go

USE dbFinanzasG

CREATE TABLE tblTipoMovimiento (id_tMovimiento INT IDENTITY (1,1) PRIMARY KEY,
tMovimiento VARCHAR(8) NOT NULL)

CREATE TABLE tblPresupuesto (id_presupuesto INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
montoPropuesto DECIMAL (10,2) NOT NULL )

CREATE TABLE tblProveedores (id_proveedor int IDENTITY (1,1) PRIMARY KEY, 
proveedor VARCHAR (25) NOT NULL);

CREATE TABLE tblMonedas (id_moneda INT IDENTITY (1,1) PRIMARY KEY, 
nomMoneda VARCHAR(25) NOT NULL);

CREATE TABLE tblUsuarios (id_usuario INT IDENTITY (1,1) PRIMARY KEY, 
usuario VARCHAR (8) NOT NULL, 
contrasena VARCHAR (12) NOT NULL, 
nom_usuario VARCHAR (15) NOT NULL, 
ap1_usuario VARCHAR (15) NOT NULL, 
ap2_Usuario VARCHAR (15) NOT NULL,
correoElectronico VARCHAR(320) NOT NULL);

CREATE TABLE tblCuentas (id_Cuenta INT IDENTITY (1,1) PRIMARY KEY, 
numCuenta VARCHAR(32) NOT NULL, 
saldo DECIMAL (10,2) NOT NULL, 
id_Proveedor INT NOT NULL, 
id_moneda INT NOT NULL,
activa BIT NOT NULL, 
id_usuario int NOT NULL,
constraint fk_proCue foreign key(id_Proveedor) references tblProveedores(id_proveedor),
constraint fk_proMon foreign key(id_moneda) references tblMonedas(id_moneda),
constraint fk_proUsu foreign key(id_usuario) references tblUsuarios(id_usuario))

CREATE TABLE tblCategorias (id_Categoria INT IDENTITY (1,1) PRIMARY KEY NOT NULL, 
nomCategoria VARCHAR(25) NOT NULL, 
id_tMovimiento INT NOT NULL, 
id_presupuesto INT NOT NULL
constraint fk_tMovCat foreign key(id_tMovimiento) references tblTipoMovimiento(id_tMovimiento),
constraint fk_preCat foreign key(id_presupuesto) references tblPresupuesto(id_presupuesto))

CREATE TABLE tlbRegistro (id_registro INT IDENTITY (1,1) PRIMARY KEY , 
fecha DATE NOT NULL, 
descripcion VARCHAR (60) NOT NULL, 
comprobante INT  NOT NULL,
monto DECIMAL (10,2) NOT NULL, 
id_categoria INT NOT NULL, 
id_cuenta INT NOT NULL,
constraint fk_RegCat foreign key(id_categoria) references tblCategorias(id_categoria),
constraint fk_RegCue foreign key(id_cuenta) references tblCuentas(id_cuenta))






