USE dbFinanzasG
go

--Procedimiento para Insercion de monedas
CREATE PROCEDURE spInsertarMonedas
	@nomMoneda VARCHAR (25)
	
AS
BEGIN

	INSERT INTO tblMonedas(nomMoneda)
		VALUES (@nomMoneda);
END