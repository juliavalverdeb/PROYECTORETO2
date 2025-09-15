# PROYECTORETO2

Proyecto Ciencia de Datos Reproducible 
- **Julia Valverde**  
Máster en Behavioral Data Science  
2025

Datos utilizados: Gapminder 

Este proyecto forma parte del Máster en Behavioral Data Science y tiene como objetivo poner en práctica todas las fases de un proyecto de **Ciencia de Datos Reproducible**: desde la carga y depuración de datos hasta la creación de dashboards dinámicos y la comunicación de resultados.


# Objetivo principal

Analizar y comparar la evolución de la esperanza de vida en __España__, __Francia__, __Italia__ y __Alemania__ utilizando datos de Gapminder, con el fin de identificar similitudes y diferencias en sus tendencias históricas. Este análisis se desarrolla en el marco de un proyecto de ciencia de datos reproducible, garantizando la trazabilidad en la depuración, el análisis y la comunicación de los resultados.

# Objetivos específicos

__1. Importar y depurar los datos de esperanza de vida de Gapminder.__ Asegurar que la información esté limpia y lista para el análisis, filtrando los países de interés y gestionando posibles valores perdidos.

__2. Transformar los datos a un formato adecuado para análisis temporal y comparativo.__ Reestructurar la base de datos en formato largo, permitiendo trabajar con series temporales de varios países y facilitar la comparación entre ellos.

__3. Calcular indicadores descriptivos de la esperanza de vida.__ Obtener medidas como valores medios, mínimos y máximos por país y por período, para resumir la evolución de manera clara.

__4. Visualizar la evolución de la esperanza de vida en España y países seleccionados mediante gráficos exploratorios.__ Representar tendencias históricas comparadas para identificar similitudes, diferencias y posibles patrones regionales o temporales.

__5. Generar un informe técnico reproducible y una presentación con los hallazgos principales.__ Comunicar los resultados del análisis comparativo mediante R Markdown, garantizando la transparencia y reproducibilidad del proyecto.


# Estructura del repositorio

Proyecto-Gapminder/

├── Datos/

│ ├── base_original/ <- Datos crudos descargados de Gapminder

│ └── base_depurada/ <- Datos procesados/listos para análisis

│ └── codigo_depuracion/ <- Scripts de limpieza y transformación de datos

├── Dashboard/

│ ├── codigo/ <- Código fuente del dashboard

│ └── html/ <- Exportación del dashboard en HTML

├── Informe/

│ ├── codigo/ <- Código del análisis y gráficos exploratorios

│ └── pdf/ <- Informe exportado en PDF

├── Presentacion/

│ ├── codigo/ <- Código de la presentación

│ └── exportado/ <- Presentación en PDF/HTML

├── crear_estructura.R <- Script para generar la estructura de carpetas

└── README.md <- Este archivo


# Tecnologías utilizadas

- **RStudio** (IDE principal)  
- **Git + GitHub** (control de versiones y colaboración)  
- **R Markdown / knitr** (informes y presentaciones reproducibles)  
- **Shiny / Flexdashboard** (visualizaciones dinámicas)  
- **LaTeX** (para presentación PDF con formato académico)  



