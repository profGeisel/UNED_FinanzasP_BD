USE [dbFinanzasG]
GO
/** Object:  StoredProcedure [dbo].[GetMovimientos]    Script Date: 4/4/2025 18:38:43 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetMovimientos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id_tMovimiento,tMovimiento 
	FROM tblTipoMovimiento 
END