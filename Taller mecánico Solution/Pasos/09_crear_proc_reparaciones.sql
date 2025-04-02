CREATE PROCEDURE Reparaciones_procedure (
@Matricula VARCHAR(7), 
@Descripcion VARCHAR(255), 
@Valor_materiales INT, 
@Horas_reparacion DECIMAL(10,2)
)

AS
BEGIN
	DECLARE @Fecha_reparacion DATE
	DECLARE @Precio_obra DECIMAL(10,2)
	DECLARE @Importe_total DECIMAL(10,2)
	
	SET @Fecha_reparacion = GETDATE()
	SET @Precio_obra = (@Horas_reparacion * 50)
	SET @Importe_total = (@Precio_obra + @Valor_materiales)
	
	INSERT INTO Reparaciones (Fecha_reparacion, Matricula, Descripcion, Valor_materiales, Horas_reparacion, Precio_obra, Importe_total)
	VALUES (@Fecha_reparacion, @Matricula, @Descripcion, @Valor_materiales, @Horas_reparacion, @Precio_obra, @Importe_total)
END
