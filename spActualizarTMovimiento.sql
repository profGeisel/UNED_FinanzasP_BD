USE dbFinanzasG
go

--Procedimiento para Actualizar un TipoMovimiento
CREATE PROCEDURE spActualizarTMovimiento
	@id_tMovimiento INT,
	@tMovimiento VARCHAR(8)

AS
BEGIN

	UPDATE tblTipoMovimiento SET tMovimiento=@tMovimiento WHERE id_tMovimiento=@id_tMovimiento;
END