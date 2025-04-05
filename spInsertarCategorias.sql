USE dbFinanzasG
go

--Procedimiento para Insercion de Categorias
CREATE PROCEDURE spInsertarCategorias
	@nomCategoria VARCHAR (25),
	@id_tMovimiento INT,
	@id_presupuesto INT,
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
	if(not exists(select * from tblCategorias where nomCategoria=@nomCategoria))
	begin 
	INSERT INTO tblCategorias(nomCategoria,id_tMovimiento,id_presupuesto)
		VALUES (@nomCategoria,@id_tMovimiento,@id_presupuesto);
		SET @registrado=1
		SET @mensaje= 'Categoria Registrada con Exito'
	END
	ELSE
	BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe una categoria con este nombre'
	END
END