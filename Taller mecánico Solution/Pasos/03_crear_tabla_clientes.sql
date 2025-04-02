CREATE TABLE Clientes (
	NIF NIF_type PRIMARY KEY,
	Nombre Nombre_type,
	Apellido_1 Apellido_1_type,
	Apellido_2 Apellido_2_type,
	Direccion Direccion_type,
	Poblacion Poblacion_type,
	CP CP_type,
	Telefono Telefono_type UNIQUE,
	Correo_electronico Correo_electronico_type UNIQUE,
	CONSTRAINT Const_correo_electronico CHECK (Correo_electronico LIKE '%_@_%_._%'),
	Datos_adjuntos Datos_adjuntos_type UNIQUE
)