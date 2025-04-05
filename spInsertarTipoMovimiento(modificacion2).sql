Use dbFinanzasG;
go
ALTER PROCEDURE [dbo].[spInsertarTipoMovimiento]
    @tMovimiento VARCHAR(8)  -- Solo el parámetro necesario
AS
BEGIN
    -- Declarar las variables de salida
    DECLARE @registrado BIT;
    DECLARE @mensaje VARCHAR(80);

    -- Verificar si el tipo de movimiento ya existe
    IF NOT EXISTS (SELECT * FROM tblTipoMovimiento WHERE tMovimiento = @tMovimiento)
    BEGIN
        -- Insertar el tipo de movimiento
        INSERT INTO tblTipoMovimiento(tMovimiento) VALUES (@tMovimiento);
        -- Asignar los valores de salida
        SET @registrado = 1;
        SET @mensaje = 'Tipo de Movimiento Ingresado con Exito';
    END
    ELSE
    BEGIN
        -- Ya existe el tipo de movimiento
        SET @registrado = 0;
        SET @mensaje = 'Ya existe un tipo de movimiento con ese nombre';
    END

    -- Devolver los resultados
    SELECT @registrado AS registrado, @mensaje AS mensaje;
END