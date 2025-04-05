USE dbFinanzasG
go

--Procedimiento para Eliminar Usuario
CREATE PROCEDURE spEliminarUsuario
	@id_usuario INT

AS
BEGIN

	DELETE tblUsuarios WHERE id_usuario=@id_usuario;
END