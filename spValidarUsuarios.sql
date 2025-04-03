
use dbFinanzasG;
go
--Procedimiento para Insercion de Usuarios
CREATE PROCEDURE spValidarUsuarios(
	@correoElectronico VARCHAR (320),
	@contrasena VARCHAR (12)
	
	)
AS
BEGIN
	if(exists(select * from tblUsuarios where correoElectronico=@correoElectronico and contrasena=@contrasena))
	select id_usuario from tblUsuarios where correoElectronico=@correoElectronico and contrasena=@contrasena
	else 
	select '0'
	end