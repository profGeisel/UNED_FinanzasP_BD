USE dbFinanzasG
go

--Procedimiento para Insercion de monedas
CREATE PROCEDURE spInsertarMonedas
	@nomMoneda VARCHAR (25),
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
	if(not exists(select * from tblMonedas where nomMoneda=@nomMoneda))
	begin 
		INSERT INTO tblMonedas(nomMoneda)
		VALUES (@nomMoneda);
		SET @registrado=1
		SET @mensaje= 'Moneda registrada con exito'
	END
	ELSE
	BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe una moneda con este nombre'
END