EXEC Reparaciones_procedure 
@Matricula = '1234ABC', 
@Descripcion = 'Cambio de aceite y filtro', 
@Valor_materiales = 50, 
@Horas_reparacion = 1.0

EXEC Reparaciones_procedure
@Matricula = '1234ABC', 
@Descripcion = 'Sustituci�n de pastillas de freno', 
@Valor_materiales = 80, 
@Horas_reparacion = 1.5

EXEC Reparaciones_procedure
@Matricula = '5678DEF', 
@Descripcion = 'Revisi�n general', 
@Valor_materiales = 100, 
@Horas_reparacion = 2.0

EXEC Reparaciones_procedure 
@Matricula = '9101GHI', 
@Descripcion = 'Cambio de neum�ticos', 
@Valor_materiales = 200, 
@Horas_reparacion = 1.0