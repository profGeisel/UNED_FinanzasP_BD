USE dbFinanzasG
go

--Procedimiento para Actualizar Monedas
CREATE PROCEDURE spActualizarMonedas
	@id_Moneda INT,
	@nomMoneda VARCHAR(25)

AS
BEGIN

	UPDATE tblMonedas SET nomMoneda=@nomMoneda WHERE id_moneda=@id_Moneda;
END