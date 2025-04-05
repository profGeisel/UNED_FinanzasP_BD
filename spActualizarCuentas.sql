USE dbFinanzasG
go

--Procedimiento para Actualizar Cuentas
CREATE PROCEDURE spActualizarCuentas
@numCuenta  VARCHAR (32),
	@saldo DECIMAL (10,2),
	@id_Proveedor int,
	@id_moneda int,
	@activa BIT,
	@id_usuario INT
AS
BEGIN

	UPDATE tblCuentas SET numCuenta=@numCuenta,
	saldo=@saldo,
	id_Proveedor=@id_Proveedor,
	id_moneda=@id_moneda,
	activa=@activa,
	id_usuario=@id_usuario
	WHERE id_cuenta=@id_cuenta;
END