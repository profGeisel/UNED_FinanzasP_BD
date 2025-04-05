USE dbFinanzasG
go

--Procedimiento para Eliminar monedas
CREATE PROCEDURE spEliminarMoneda
	@id_Moneda INT

AS
BEGIN

	DELETE tblMonedas WHERE id_moneda=@id_Moneda;
END