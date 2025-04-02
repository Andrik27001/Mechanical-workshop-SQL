--Clientes
CREATE TYPE NIF_type FROM CHAR(9) NOT NULL
CREATE TYPE Nombre_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Apellido_1_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Apellido_2_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Direccion_type FROM VARCHAR(100) NOT NULL
CREATE TYPE Poblacion_type FROM VARCHAR(50) NOT NULL
CREATE TYPE CP_type FROM CHAR(5) NOT NULL
CREATE TYPE Telefono_type FROM VARCHAR(15) NOT NULL
CREATE TYPE Correo_electronico_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Datos_adjuntos_type FROM VARCHAR(255) NOT NULL

--Vehiculos
CREATE TYPE Matricula_type FROM VARCHAR(7) NOT NULL
CREATE TYPE Marca_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Modelo_type FROM VARCHAR(50) NOT NULL
CREATE TYPE Año_matriculacion_type FROM SMALLINT NOT NULL
CREATE TYPE Kilometraje_type FROM INT NOT NULL
CREATE TYPE Tipo_combustible_type FROM VARCHAR(9) NOT NULL
CREATE TYPE Tipo_cambio_type FROM VARCHAR(10) NOT NULL
CREATE TYPE Potencia_type FROM VARCHAR(6) NOT NULL

--Facturas
CREATE TYPE Reparacion_id_type FROM TINYINT NOT NULL
CREATE TYPE Fecha_type FROM DATE NOT NULL
CREATE TYPE Importe_sin_IVA_type FROM DECIMAL(10,2) NOT NULL
CREATE TYPE IVA_type FROM DECIMAL(10,2) NOT NULL
CREATE TYPE Importe_con_IVA_type FROM DECIMAL(10,2) NOT NULL

--Reparaciones
CREATE TYPE Descripcion_type FROM VARCHAR(255) NOT NULL
CREATE TYPE Valor_materiales_type FROM INT NOT NULL
CREATE TYPE Horas_reparacion_type FROM DECIMAL(10,2) NOT NULL
CREATE TYPE Precio_obra_type FROM DECIMAL(10,2) NOT NULL
CREATE TYPE Importe_total_type FROM DECIMAL(10,2) NOT NULL
CREATE TYPE Estado_type FROM VARCHAR(11) NOT NULL

----Codigo para eliminar los tipos de datos
----Clientes
--DROP TYPE NIF_type
--DROP TYPE Nombre_type
--DROP TYPE Apellido_1_type
--DROP TYPE Apellido_2_type
--DROP TYPE Direccion_type
--DROP TYPE Poblacion_type
--DROP TYPE CP_type
--DROP TYPE Telefono_type
--DROP TYPE Correo_electronico_type
--DROP TYPE Datos_adjuntos_type

----Vehiculos
--DROP TYPE Matricula_type
--DROP TYPE Marca_type
--DROP TYPE Modelo_type
--DROP TYPE Año_matriculacion_type
--DROP TYPE Kilometraje_type
--DROP TYPE Tipo_combustible_type
--DROP TYPE Tipo_cambio_type
--DROP TYPE Potencia_type

----Facturas
--DROP TYPE Fecha_type
--DROP TYPE Importe_sin_IVA_type
--DROP TYPE IVA_type
--DROP TYPE Importe_con_IVA_type

----Reparaciones
--DROP TYPE Fecha_reparacion_type
--DROP TYPE Descripcion_type
--DROP TYPE Valor_materiales_type
--DROP TYPE Horas_reparacion_type
--DROP TYPE Precio_obra_type
--DROP TYPE Importe_total_type
--DROP TYPE Factura_id_type
--DROP TYPE Estado_type