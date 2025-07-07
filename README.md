# ETL de datos climáticos por zonas de Argentina

Este proyecto aplica un proceso ETL sobre datos meteorológicos históricos (1991–2020) del Servicio Meteorológico Nacional (SMN), correspondientes a estaciones ubicadas en distintas regiones del país. El objetivo es limpiar, transformar y preparar los datos para su posterior análisis y carga en una base de datos SQL Server.

## 🧰 Tecnologías utilizadas

- Python (Pandas, Jupyter)
- SQL Server
- Git + GitHub

## 📁 Estructura del proyecto

etl_clima_zonas_argentinas/

├── data/ # Archivos originales y CSV transformado

├── notebooks/ # Proceso ETL en Jupyter Notebook

├── sql/ # Scripts SQL (opcional)

├── src/ # Código adicional (si aplica)

└── README.md


## 🔄 Proceso ETL

### 1. Extracción
Se utilizaron dos archivos del SMN (Servicio Meteorológico Nacional):
- Una lista de estaciones meteorológicas con su ubicación.
- Datos climáticos promedio del período 1991–2020.

### 2. Transformación
- Selección de 7 estaciones representativas: Rosario, Salta, Bariloche, Mendoza, Aeroparque, Iguazú y Base Esperanza.
- Conversión de tipos, limpieza de valores, reorganización de columnas y estandarización.
- Exportación del DataFrame final a CSV (`data/df_climas_arg.csv`).

### 3. Carga (en desarrollo)
- El archivo CSV está listo para ser cargado a una base de datos SQL Server.

## ▶️ Cómo ejecutar

1. Clonar este repositorio.
2. Abrir el notebook `notebooks/etl_transform.ipynb`.
3. Ejecutar las celdas paso a paso.
4. El resultado final se guarda en `data/df_climas_arg.csv`.

## 📌 Estado del proyecto

🔧 En desarrollo.

---
