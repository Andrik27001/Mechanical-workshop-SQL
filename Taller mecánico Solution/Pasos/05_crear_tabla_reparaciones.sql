CREATE TABLE Reparaciones (
	Reparacion_id TINYINT IDENTITY(1,1) PRIMARY KEY,
	Fecha_reparacion Fecha_type,
	Matricula Matricula_type,
	CONSTRAINT Fk_reparaciones_vehiculos FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula),
	Descripcion Descripcion_type,
	Valor_materiales Valor_materiales_type,
	Horas_reparacion Horas_reparacion_type DEFAULT 0.5,
	CONSTRAINT Const_horas_reparacion CHECK (Horas_reparacion >= 0.25),
	Precio_obra Precio_obra_type,
	Importe_total Importe_total_type,
	Estado Estado_type DEFAULT 'Sin reparar'
)