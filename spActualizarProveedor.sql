USE dbFinanzasG
go

--Procedimiento para Actualizar proveedor
CREATE PROCEDURE spActualizarProveedor
	@id_Proveedor INT,
	@proveedor VARCHAR(25)

AS
BEGIN

	UPDATE tblProveedor SET proveedor=@proveedor WHERE id_proveedor=@id_proveedor;
END