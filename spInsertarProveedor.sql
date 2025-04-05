USE dbFinanzasG
go

--Procedimiento para Insercion de provedores
CREATE PROCEDURE spInsertarProveedor
	@proveedor VARCHAR (25),
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
if(not exists(select * from tblProveedor where proveedor=@proveedor))
	begin
	INSERT INTO tblProveedor(proveedor)
		VALUES (@proveedor);
		SET @registrado=1
		SET @mensaje= 'Proveedor Ingresado con Exito'
END
ELSE
BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe un Proveedor con ese nombre'
END
END
	