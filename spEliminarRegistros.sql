USE dbFinanzasG
go

--Procedimiento para Eliminar Registros
CREATE PROCEDURE spEliminarRegistros
	@id_Registro INT

AS
BEGIN

	DELETE tblRegistros WHERE id_Registro=@id_Registro;
END