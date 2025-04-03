
use dbFinanzasG;
go

--Procedimiento para Insercion de Usuarios
CREATE PROCEDURE spInsertarUsuarios(
	@contrasena VARCHAR (500),
	@nom_usuario VARCHAR (15),
	@ap1_usuario VARCHAR (15),
	@ap2_usuario VARCHAR (15),
	@correoElectronico VARCHAR (320),
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
	if(not exists(select * from tblUsuarios where correoElectronico=@correoElectronico))
	begin 
		INSERT INTO tblUsuarios(contrasena, nom_usuario, ap1_usuario, ap2_usuario, correoElectronico)
		VALUES (@contrasena,@nom_usuario, @ap1_usuario, @ap2_usuario,@correoElectronico);
		SET @registrado=1
		SET @mensaje= 'Usuario Registrado con Exito'
	END
	ELSE
	BEGIN 
		set @Registrado=0
		set @mensaje='Ya existe un usuario registrado con este correo'
	END
END