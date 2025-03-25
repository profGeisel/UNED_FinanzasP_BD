USE dbFinanzasG
go

--Procedimiento para Eliminar presupuesto
CREATE PROCEDURE spEliminarProveedor
	@id_Proveedor INT

AS
BEGIN

	DELETE tblProveedor WHERE id_proveedor=@id_Proveedor;
END