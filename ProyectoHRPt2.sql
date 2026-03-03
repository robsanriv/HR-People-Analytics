USE ProyectoHR;

SELECT 
    d.nombre_dept, 
    COUNT(f.emp_id) as Total_Empleados,
    SUM(CASE WHEN f.estatus_activo = 'No' THEN 1 ELSE 0 END) as Bajas,
    ROUND((SUM(CASE WHEN f.estatus_activo = 'No' THEN 1 ELSE 0 END) / COUNT(f.emp_id)) * 100, 2) as Tasa_Rotacion_Porcentaje
FROM Fact_Desempeno f
JOIN Dim_Departamentos d ON f.dept_id = d.dept_id
GROUP BY d.nombre_dept;