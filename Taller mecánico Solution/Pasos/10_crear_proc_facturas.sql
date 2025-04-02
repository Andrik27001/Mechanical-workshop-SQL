CREATE PROCEDURE Facturas_procedure
@Reparacion_id TINYINT

AS
IF EXISTS (SELECT Reparacion_id FROM Facturas WHERE @Reparacion_id = Reparacion_id)
BEGIN
	RAISERROR('Esta reparacion ya se ha facturado.', 16, 1)
END
ELSE
BEGIN
	DECLARE @NIF CHAR(9)
	DECLARE @Matricula VARCHAR(7)
	DECLARE @Kilometraje INT
	DECLARE @Fecha DATE
	DECLARE @Importe_sin_IVA DECIMAL(10,2)
	DECLARE @IVA DECIMAL(10,2)
	DECLARE @Importe_con_IVA DECIMAL(10,2)

	UPDATE Reparaciones
	SET Estado = 'Reparado'
	WHERE @Reparacion_id = Reparacion_id

	SELECT @NIF = NIF 
	FROM Reparaciones 
	INNER JOIN Vehiculos 
	ON Reparaciones.Matricula = Vehiculos.Matricula
	WHERE @Reparacion_id = Reparacion_id

	SELECT @Matricula = Matricula
	FROM Reparaciones
	WHERE @Reparacion_id = Reparacion_id

	SELECT @Kilometraje = Kilometraje 
	FROM Reparaciones 
	INNER JOIN Vehiculos 
	ON Reparaciones.Matricula = Vehiculos.Matricula
	WHERE @Reparacion_id = Reparacion_id

	SELECT @Importe_sin_IVA = SUM(Precio_obra + Valor_materiales)
	FROM Reparaciones
	WHERE @Reparacion_id = Reparacion_id

	SET @Fecha = GETDATE()
	SET @IVA = @Importe_sin_IVA * 0.21
	SET @Importe_con_IVA = @Importe_sin_IVA + @IVA

	INSERT INTO Facturas (Reparacion_id, Fecha, NIF, Matricula, Kilometraje, Importe_sin_IVA, IVA, Importe_con_IVA)
	VALUES(@Reparacion_id, @Fecha, @NIF, @Matricula, @Kilometraje, @Importe_sin_IVA, @IVA, @Importe_con_IVA)
END