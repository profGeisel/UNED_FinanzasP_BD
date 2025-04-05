USE dbFinanzasG
go

--Procedimiento para Insercion de TipoMovimiento
CREATE PROCEDURE spInsertarTipoMovimiento(
	@tMovimiento VARCHAR(8),
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
if(not exists(select * from tblTipoMovimiento where tMovimiento=@tMovimiento))
	begin
	INSERT INTO tblTipoMovimiento(tMovimiento)VALUES (@tMovimiento);

		SET @registrado=1
		SET @mensaje= 'Tipo de Movimiento Ingresado con Exito'
END
ELSE
BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe un tipo de movimiento con ese nombre'
END
END