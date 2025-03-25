USE dbFinanzasG
go

--Procedimiento para Actualizar presupuesto
CREATE PROCEDURE spActualizarPresupuesto
	@id_Presupuesto INT,
	@montoPropuesto DECIMAL(10,2)

AS
BEGIN

	UPDATE tblPresupuesto SET montoPropuesto=@montoPropuesto WHERE id_presupuesto=@id_presupuesto;
END