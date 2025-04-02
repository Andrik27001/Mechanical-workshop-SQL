CREATE TABLE Facturas (
	Factura_id TINYINT IDENTITY(1,1) PRIMARY KEY,
	Reparacion_id Reparacion_id_type,
	CONSTRAINT Fk_facturas_reparaciones FOREIGN KEY (Reparacion_id) REFERENCES Reparaciones(Reparacion_id),
	Fecha Fecha_type,
	NIF NIF_type,
	CONSTRAINT Fk_facturas_clientes FOREIGN KEY (NIF) REFERENCES Clientes(NIF),
	Matricula Matricula_type,
	CONSTRAINT Fk_facturas_vehiculos FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula),
	Kilometraje Kilometraje_type,
	Importe_sin_IVA Importe_sin_IVA_type,
	IVA IVA_type,
	Importe_con_IVA Importe_con_IVA_type
)