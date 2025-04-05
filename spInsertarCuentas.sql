USE dbFinanzasG
go

--Procedimiento para Insercion de Cuentas
CREATE PROCEDURE spInsertarCuentas
	@numCuenta  VARCHAR (32),
	@saldo DECIMAL (10,2),
	@id_Proveedor int,
	@id_moneda int,
	@activa BIT,
	@id_usuario INT,
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
	if(not exists(select * from tblCuentas where numCuenta=@numCuenta))
	begin 
		INSERT INTO tblCuentas(numCuenta,saldo, id_Proveedor,id_moneda, activa, id_usuario)
		VALUES (@numCuenta, @saldo, @id_proveedor, @id_moneda,@activa,@id_usuario);
		SET @registrado=1
		SET @mensaje= 'Cuenta Registrada con Exito'
	END
	ELSE
	BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe este numero de cuenta'
END