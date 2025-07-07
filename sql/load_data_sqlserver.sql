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
    lat_gr FLOAT,
    lat_min FLOAT,
    lon_gr FLOAT,
    lon_min FLOAT,
    altura_m INT
);
SELECT * FROM dbo.df_climas_arg;
