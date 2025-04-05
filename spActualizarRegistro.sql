USE dbFinanzasG
go

--Procedimiento para Actualizar Registro
CREATE PROCEDURE spActualizarRegistro
	@fecha DATE,
	@descripcion VARCHAR(60),
	@comprobante INT,
	@monto DECIMAL(10,2),
	@id_categoria INT,
	@id_cuenta INT
AS
BEGIN

	UPDATE tblRegistros SET fecha=@fecha,
	descripcion=@descripcion,
	comprobante=@comprobante,
	monto=@monto, 
	id_categoria=@id_categoria,
	id_cuenta=@id_cuenta
	WHERE id_registro=@id_registro;
END