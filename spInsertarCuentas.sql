USE dbFinanzasG
go

--Procedimiento para Insercion de Cuentas
CREATE PROCEDURE spInsertarCuentas
	@numCuenta  VARCHAR (32),
	@saldo DECIMAL (10,2),
	@id_Proveedor int,
	@id_moneda int,
	@activa BIT,
	@id_usuario INT
	
AS
BEGIN

	INSERT INTO tblCuentas(numCuenta,saldo, id_Proveedor,id_moneda, activa, id_usuario)
		VALUES (@numCuenta, @saldo, @id_proveedor, @id_moneda,@activa,@id_usuario);
END