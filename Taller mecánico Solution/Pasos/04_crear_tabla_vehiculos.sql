CREATE TABLE Vehiculos (
	Matricula Matricula_type PRIMARY KEY,
	Marca Marca_type,
	Modelo Modelo_type,
	A�o_matriculacion A�o_matriculacion_type,
	Kilometraje Kilometraje_type,
	Tipo_combustible Tipo_combustible_type,
	CONSTRAINT Const_tipo_combustible CHECK (Tipo_combustible IN ('Gasolina', 'Diesel', 'Hibrido', 'El�ctrico')),
	Tipo_cambio Tipo_cambio_type,
	CONSTRAINT Const_tipo_cambio CHECK (Tipo_cambio IN ('Manual', 'Autom�tico')),
	Potencia Potencia_type,
	NIF NIF_type,
	CONSTRAINT Fk_vehiculos_clientes FOREIGN KEY (NIF) REFERENCES Clientes(NIF)
)