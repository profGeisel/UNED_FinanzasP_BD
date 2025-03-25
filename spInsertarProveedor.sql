USE dbFinanzasG
go

--Procedimiento para Insercion de provedores
CREATE PROCEDURE spInsertarProveedor
	@proveedor VARCHAR (25)
	
AS
BEGIN

	INSERT INTO tblProveedor(proveedor)
		VALUES (@proveedor);
END
	