USE dbFinanzasG
go

--Procedimiento para Eliminar Usuario
CREATE PROCEDURE spEliminarCategoria
	@id_Categoria INT

AS
BEGIN

	DELETE tblCategorias WHERE id_Categoria=@id_Categoria;
END