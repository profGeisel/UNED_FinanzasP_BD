USE dbFinanzasG
go

--Procedimiento para Insercion de Usuarios
CREATE PROCEDURE spInsertarUsuarios
	@usuario VARCHAR (8),
	@nom_usuario VARCHAR (12),
	@ap1_usuario VARCHAR (15),
	@ap2_usuario VARCHAR (15),
	@correoElectronico VARCHAR (320)
AS
BEGIN

	INSERT INTO tblUsuarios(usuario, nom_usuario, ap1_usuario, ap2_usuario, correoElectronico)
		VALUES (@usuario, @nom_usuario, @ap1_usuario, @ap2_usuario,@correoElectronico);
END