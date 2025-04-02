SELECT 
	Matricula, 
	STRING_AGG(Reparacion_id, ', ') AS Ids_reparaciones,
	SUM(Importe_total) AS Precio_total_reparaciones 
FROM Reparaciones
GROUP BY Matricula