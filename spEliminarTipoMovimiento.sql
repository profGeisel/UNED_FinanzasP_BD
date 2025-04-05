USE dbFinanzasG
go

--Procedimiento para Actualizar un TipoMovimiento
CREATE PROCEDURE spEliminarTipoMovimiento
	@id_tMovimiento INT

AS
BEGIN

	DELETE tblTipoMovimiento WHERE id_tMovimiento=@id_tMovimiento;
END
