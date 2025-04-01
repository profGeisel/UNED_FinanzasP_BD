


--Procedimiento para Insercion de Usuarios
CREATE PROCEDURE spValidarUsuarios(
	@usuario VARCHAR (8),
	@nom_usuario VARCHAR (15),
	@contrasena VARCHAR (12),
	@ap1_usuario VARCHAR (15),
	@ap2_usuario VARCHAR (15),
	@correoElectronico VARCHAR (320)
	)
AS
BEGIN
	if(exists(select * from tblUsuarios where correoElectronico=@correoElectronico and contrasena=@contrasena))
	select id_usuario from tblUsuarios where correoElectronico=@correoElectronico and contrasena=@contrasena
	else 
	select '0'
	end