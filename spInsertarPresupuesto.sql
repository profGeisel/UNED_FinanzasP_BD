USE dbFinanzasG
go

--Procedimiento para Insercion de presupuesto
CREATE PROCEDURE spInsertarPresupuesto
	@montoPropuesto DECIMAL(10,2)
	
AS
BEGIN

	INSERT INTO tblPresupuesto(montoPropuesto)
		VALUES (@montoPropuesto);
END