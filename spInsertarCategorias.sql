USE dbFinanzasG
go

--Procedimiento para Insercion de Categorias
CREATE PROCEDURE spInsertarCategorias
	@nomCategoria VARCHAR (25),
	@id_tMovimiento INT,
	@id_presupuesto INT
AS
BEGIN

	INSERT INTO tblCategorias(nomCategoria,id_tMovimiento,id_presupuesto)
		VALUES (@nomCategoria,@id_tMovimiento,@id_presupuesto);
END