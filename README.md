# HR-Talent-Analytics-Project
HR-People-Analytics: Data-Cleaning-Pipeline & Talent-Retention-Insights.

Diseño de un ecosistema de datos para el análisis de rotación de personal (Churn) y desempeño laboral mediante el procesamiento de datos "sucios".

## Objetivo

* Desarrollar un pipeline de datos completo para identificar factores críticos que afectan la retención de talento, analizando la correlación entre el ausentismo, el desempeño y la estabilidad laboral por departamento.

## 🛠️ Tecnologías

* Python: Pandas | Numpy | Mysql-connector (Data Cleaning, Manejo de Nulos y ETL).
* MySQL: Arquitectura de Datos Relacional con normalización y llaves foráneas.
* Power BI: Modelado de datos multidimensional (1:*) y métricas de People Analytics con DAX (DIVIDE, CALCULATE, AVERAGE).
* SQL: Consultas de agregación y cálculo de tasas de rotación.

## Pasos Clave

1. Limpieza y Transformación (Python):
* Normalización de nombres: Eliminación de espacios en blanco y corrección de capitalización mixta mediante .str.strip().str.title().
* Estandarización de Fechas: Conversión de múltiples formatos inconsistentes (YYYY/MM/DD, DD-MM-YYYY) a un formato estándar de SQL.
2. Modelado de Datos (SQL):
* Creación de un esquema de tres tablas: Dim_Empleados (Atributos), Dim_Departamentos (Estructura) y Fact_Desempeño (Hechos).
* Implementación de restricciones de integridad para asegurar la consistencia entre empleados y sus evaluaciones.
3. People Analytics (Power BI):
* Modelado de relaciones para permitir el filtrado cruzado entre departamentos y desempeño.
* Creación de un Dashboard Ejecutivo con indicadores de gestión de talento y alertas visuales (Formato Condicional).

## Resultados
El análisis permitió extraer los siguientes hallazgos estratégicos:
* Tasa de Rotación (Churn Rate): Identificación de departamentos con mayor fuga de talento, permitiendo segmentar el perfil de los empleados que abandonan la empresa.
* Correlación de Desempeño: Hallazgo de patrones entre los días de ausencia y la calificación de desempeño (Avg 3.07), optimizando la detección temprana de empleados en riesgo.
* Visualización Intuitiva: Implementación de un "Semáforo de Desempeño" en tablas de detalle para priorizar revisiones de recursos humanos.

Visualización del Dashboard
<p align="center">
<img src="https://github.com/robsanriv/HR-People-Analytics/blob/main/HR%20Analisis.jpg" alt="Dashboard HR Analytics" width="800">
</p>

<p align="center">
<a href="https://app.powerbi.com/view?r=eyJrIjoiYTRlMTdiNDEtMTRjMS00NTgwLWE3NTctNzk2NGQ4NmRhOTgwIiwidCI6ImM3OGEzOTM2LWUzN2YtNDUzZi1iYTBjLTI4Nzc3Nzk0ZWRhNiIsImMiOjR9">
<img src="https://img.shields.io/badge/Power_BI-Ver_Dashboard_Interactivo-yellow?style=for-the-badge&logo=powerbi&logoColor=black" alt="Live Dashboard">
</a>
</p>
