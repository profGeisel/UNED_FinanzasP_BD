USE dbFinanzasG
go

--Procedimiento para Insercion de TipoMovimiento
CREATE PROCEDURE spInsertarTipoMovimiento
	@tMovimiento VARCHAR(8)
	
AS
BEGIN

	INSERT INTO tblTipoMovimiento(tMovimiento)
		VALUES (@tMovimiento);
END