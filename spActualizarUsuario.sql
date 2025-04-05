USE dbFinanzasG
go

--Procedimiento para Actualizar Usuario
CREATE PROCEDURE spActualizarUsuario
	@id_usuario int,
	@usuario VARCHAR (8),
	@nom_usuario VARCHAR (12),
	@ap1_usuario VARCHAR (15),
	@ap2_usuario VARCHAR (15),
	@correoElectronico VARCHAR (320)
AS
BEGIN

	UPDATE tblUsuarios SET usuario=@usuario,
	nom_usuario=@nom_usuario,
	ap1_usuario=@ap1_usuario,
	ap2_usuario=@ap2_usuario,
	correoElectronico=@correoElectronico
	WHERE id_usuario=@id_usuario;
END