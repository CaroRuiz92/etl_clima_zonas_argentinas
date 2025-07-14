# ETL de datos climáticos por zonas de Argentina

Este proyecto aplica un proceso ETL sobre datos meteorológicos históricos (1991–2020) del Servicio Meteorológico Nacional (SMN), correspondientes a estaciones ubicadas en distintas regiones del país. El objetivo es limpiar, transformar y preparar los datos para su análisis en SQL Server, visualización con Python y modelado predictivo.

## 🧰 Tecnologías utilizadas

- Python (Pandas, Seaborn, Statsmodels, Jupyter)
- SQL Server
- Git + GitHub
- Power BI (complementario, agregado a futuro cercano)

## 📁 Estructura del proyecto

etl_clima_zonas_argentinas/

├── data/ # Archivos originales y CSV transformado

├── notebooks/ # Proceso ETL, carga, análisis y modelo

├── sql/ # Script de carga a SQL Server

└── README.md


## 🔄 Proceso ETL

### 1. Extracción
- Datos descargados del SMN:
  - Lista de estaciones meteorológicas con su ubicación.
  - Estadísticas climáticas promedio del período 1991–2020.

### 2. Transformación
- Selección de 7 estaciones representativas: Rosario, Salta, Bariloche, Mendoza, Aeroparque, Iguazú y Base Esperanza.
- Conversión de tipos, limpieza de nulos, combinación de ubicaciones geográficas y reorganización de columnas.
- Exportación a `data/df_climas_arg.csv`.

### 3. Carga a SQL Server
- La tabla fue creada y cargada a una base de datos SQL Server utilizando `pyodbc` y scripts SQL incluidos en `/sql`.

## 📊 Análisis y modelo predictivo

- Se realizaron visualizaciones exploratorias por provincia, época y variable climática (temperatura, humedad, viento, etc.).
- Se entrenó un modelo de regresión lineal múltiple con Statsmodels para predecir la temperatura media (`temperat_c`), logrando un R² ajustado de 0.91.
- Se incorporaron variables dummy para provincias y estaciones del año.

## ▶️ Cómo ejecutar

1. Cloná este repositorio.
2. Abrí los notebooks en la carpeta `notebooks/`.
3. Ejecutá primero el ETL (`etl_transform.ipynb`) y luego los de carga y análisis.
4. El archivo transformado se guarda en `data/df_climas_arg.csv`.

## 📌 Estado del proyecto

✅ Proyecto completo y funcional (aunque con posibles mejoras nuevas).
