# Supply Chain Intelligence: End-to-End Inventory & Forecast Optimization

Este proyecto desarrolla una solución integral de Business Intelligence para la gestión de inventarios y optimización de la cadena de suministro. Utilizando el "High-Dimensional Supply Chain Inventory Dataset", se construyó un pipeline completo que transforma datos operativos crudos en decisiones estratégicas de negocio.

## Objetivo del Proyecto

Optimizar los niveles de inventario y reducir costos operativos mediante el análisis de la precisión de los pronósticos de demanda y la monitorización de la salud del stock.

## Dataset Original

Los datos provienen de un dataset de Kaggle que simula operaciones del mundo real a nivel de SKU, incluyendo:

Ventas y Pronósticos: Datos diarios con tendencias estacionales y ruido aleatorio.

Logística: Tiempos de entrega de proveedores (Lead Times) y puntos de reorden.

Finanzas: Costos unitarios, precios de venta y márgenes de utilidad reales.

Eventos: Promociones y banderas de rotura de stock (Stockouts).

## Stack Tecnológico

    Lenguaje: Python (Pandas para ETL, SQLAlchemy para conexión).

    Base de Datos: MySQL (Almacenamiento relacional optimizado).

    Visualización: Power BI (DAX y Modelo Estrella).

    Entorno: VS Code / MySQL Workbench.

## Metodología (Pipeline de Datos)
1. Extracción y Transformación (Python)

Se implementó un script de ETL que procesa los datos de SKU y almacén para generar métricas críticas:

    Feature Engineering: Creación de indicadores de "Salud de Inventario" comparando niveles actuales vs. puntos de reorden.

    Análisis de Error: Cálculo del error absoluto de pronóstico para cada registro.

2. Almacenamiento Estructurado (MySQL)

Diseño de un esquema relacional que garantiza integridad y rapidez en las consultas. Se aplicaron índices en columnas clave (Date, SKU_ID, Region) para optimizar el rendimiento del dashboard interactivo.

3. Inteligencia de Negocio (Power BI)

El dashboard final presenta una visión ejecutiva de 360°:

    Executive KPIs: Ventas Totales ($33.43M), Margen de Utilidad (33.2%) y Precisión del Pronóstico (83.8%).

    Rigor Estadístico: Inclusión de un Histograma de Distribución de Error para validar la fiabilidad del modelo de demanda (validando una distribución normal centrada en cero).

    Análisis Temporal: Comparativa visual de Units Sold vs Demand Forecast con indicadores de crecimiento mes a mes (MoM Growth).

## Insights Clave (Basados en el Análisis)

    Precisión del Modelo: El modelo de demanda mantiene una precisión del 83.8%, permitiendo una planificación financiera estable.

    Riesgo Operativo: Se identificaron zonas críticas de inventario en todas las regiones, indicando una necesidad de ajuste general en los puntos de reorden.

    Correlación de Precios: El análisis de dispersión confirma una relación lineal saludable entre costos y precios, manteniendo un margen operativo robusto del 33.2%.