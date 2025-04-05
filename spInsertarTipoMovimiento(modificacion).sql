USE [dbFinanzasG]
GO
/** Object:  StoredProcedure [dbo].[spInsertarTipoMovimiento]    Script Date: 4/4/2025 18:39:39 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Procedimiento para Insercion de TipoMovimiento
ALTER PROCEDURE [dbo].[spInsertarTipoMovimiento](
	@tMovimiento VARCHAR(8),
	@registrado bit output,
	@mensaje varchar(80) output
	)
AS
BEGIN
if(not exists(select * from tblTipoMovimiento where tMovimiento=@tMovimiento))
	begin
	INSERT INTO tblTipoMovimiento(tMovimiento)VALUES (@tMovimiento);

		SET @registrado=1
		SET @mensaje= 'Tipo de Movimiento Ingresado con Exito'
END
ELSE
BEGIN 
		set @registrado=0
		set @mensaje='Ya existe un tipo de movimiento con ese nombre'
END
END