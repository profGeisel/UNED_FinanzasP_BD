USE dbFinanzasG
go

--Procedimiento para Eliminar presupuesto
CREATE PROCEDURE spEliminarPresupuesto
	@id_Presupuesto INT

AS
BEGIN

	DELETE tblPresupuesto WHERE id_presupuesto=@id_Presupuesto;
END