USE dbFinanzasG
go

--Procedimiento para Insercion de Registro
CREATE PROCEDURE spInsertarRegistro
	@fecha DATE,
	@descripcion VARCHAR(60),
	@comprobante INT,
	@monto DECIMAL(10,2),
	@id_categoria INT,
	@id_cuenta INT
AS
BEGIN

	INSERT INTO tblRegistros(fecha, descripcion, comprobante,monto, id_categoria,id_cuenta)
		VALUES (@fecha,@descripcion,@comprobante,@monto,@id_categoria,@id_cuenta);
END