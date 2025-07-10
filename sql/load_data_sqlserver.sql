CREATE DATABASE datos_clima;
USE datos_clima;
CREATE TABLE df_climas_arg (
    estacion NVARCHAR(100),
    mes NVARCHAR(20),
    provincia NVARCHAR(100),
    precipi_mm FLOAT,
    frec_dias_precipi_sup_1mm FLOAT,
    humedad_relac FLOAT,
    nubosidad_octas FLOAT,
    temperat_c FLOAT,
    temperat_max_c FLOAT,
    temperat_min_c FLOAT,
    veloc_kmh_viento_2011_2020 FLOAT,
    altura_m INT,
	latitud FLOAT,
	longitud FLOAT
);

-- Consultas generales para chequear la calidad de datos
SELECT * FROM dbo.df_climas_arg;

-- Cantidad de registros
SELECT COUNT(*) FROM dbo.df_climas_arg;

-- Estaciones distintas
SELECT DISTINCT estacion FROM df_climas_arg;

-- Meses con mayor precipitación
SELECT mes, MAX(precipi_mm) AS 'Max_Precipit'
FROM df_climas_arg
GROUP BY mes
ORDER BY Max_Precipit DESC;

-- Temperatura máxima y mínima promedio por estación
SELECT ROUND(AVG(temperat_min_c), 2) AS 'Prom_Temp_Min', 
ROUND(AVG(temperat_max_c), 2) AS 'Prom_Temp_Max', estacion
FROM df_climas_arg
GROUP BY estacion;

-- Registros con valores nulos (por mes y estación)
SELECT * FROM dbo.df_climas_arg
WHERE mes IS NULL or estacion IS NULL;

SELECT * FROM dbo.df_climas_arg
WHERE veloc_kmh_viento_2011_2020 IS NULL
ORDER BY estacion;

-- Comparar Rosario y Bariloche
SELECT estacion, mes, precipi_mm, 
frec_dias_precipi_sup_1mm,
temperat_c, veloc_kmh_viento_2011_2020
FROM dbo.df_climas_arg
WHERE estacion IN ('BARILOCHE AERO', 'ROSARIO AERO')
ORDER BY estacion, mes;

-- Promedios generales por estación
SELECT estacion, ROUND(AVG(temperat_c), 2) AS 'Temperatura_Prom', 
ROUND(AVG(precipi_mm), 2) AS 'Precipit_Prom', 
ROUND(AVG(humedad_relac), 2) AS 'Humedad_Prom', 
ROUND(AVG(nubosidad_octas), 2) AS 'Nubosidad_Prom'
FROM dbo.df_climas_arg
GROUP BY estacion
ORDER BY estacion;

-- Estaciones con mayor velocidad de viento
SELECT estacion, MAX(veloc_kmh_viento_2011_2020) AS 'Veloc_Viento'
FROM dbo.df_climas_arg
GROUP BY estacion
ORDER BY Veloc_Viento DESC;

-- Ranking de humedad  relativa
SELECT TOP 5 ROUND(AVG(humedad_relac), 2) AS 'Humedad_Prom', 
provincia, mes
FROM dbo.df_climas_arg
GROUP BY provincia, mes
ORDER BY Humedad_Prom DESC;

-- Meses con valores atípicos en frecuencia de lluvias
SELECT mes, MAX(frec_dias_precipi_sup_1mm) AS 'Max_Frec_Lluvia', 
MIN(frec_dias_precipi_sup_1mm) AS 'Min_Frec_Lluvia'
FROM dbo.df_climas_arg
GROUP BY mes
ORDER BY Max_Frec_Lluvia, Min_Frec_Lluvia;


