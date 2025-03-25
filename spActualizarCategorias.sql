USE dbFinanzasG
go

--Procedimiento para Actualizar Categorias
CREATE PROCEDURE spActualizarCategorias
	@nomCategoria VARCHAR (25),
	@id_tMovimiento INT,
	@id_presupuesto INT
AS
BEGIN

	UPDATE tblCategorias SET nomCategoria=@nomCategoria,
	id_tMovimiento=@id_tMovimiento,
	id_presupuesto=@id_presupuesto
	WHERE id_Categoria=@id_Categoria;
END