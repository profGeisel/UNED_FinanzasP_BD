USE dbFinanzasG
go

--Procedimiento para Eliminar Cuentas
CREATE PROCEDURE spEliminarCuenta
	@id_Cuenta INT

AS
BEGIN

	DELETE tblCuentas WHERE id_Cuenta=@id_Cuenta;
END
