# PROYECTORETO2
Proyecto Ciencia de Datos Reproducible 
- **Julia Valverde**  
Máster en Behavioral Data Science  
2025

Datos utilizados: Gapminder 

Este proyecto forma parte del Máster en Behavioral Data Science y tiene como objetivo poner en práctica todas las fases de un proyecto de **Ciencia de Datos Reproducible**: desde la carga y depuración de datos hasta la creación de dashboards dinámicos y la comunicación de resultados.


# Objetivo principal

Analizar la evolución histórica de la esperanza de vida en España utilizando datos de Gapminder, aplicando técnicas de ciencia de datos reproducible.

# Objetivos específicos

1. Importar y depurar los datos de esperanza de vida de Gapminder.
2. Transformar los datos a un formato adecuado para análisis temporal.
3. Categorizar los valores de esperanza de vida en niveles (baja, media, alta).
4. Visualizar la evolución de la esperanza de vida en España mediante gráficos exploratorios.
5. Generar un informe técnico reproducible y una presentación que resuma los hallazgos.  


# Estructura del repositorio

Proyecto-Gapminder/
│
├── Datos/
│ ├── base_original/ <- Datos crudos descargados de Gapminder
│ └── base_depurada/ <- Datos procesados/listos para análisis
│ └── codigo_depuracion/ <- Scripts de limpieza y transformación de datos
│
├── Dashboard/
│ ├── codigo/ <- Código fuente del dashboard
│ └── html/ <- Exportación del dashboard en HTML
│
├── Informe/
│ ├── codigo/ <- Código del análisis y gráficos exploratorios
│ └── pdf/ <- Informe exportado en PDF
│
├── Presentacion/
│ ├── codigo/ <- Código de la presentación 
│ └── exportado/ <- Presentación en PDF/HTML
│
├── crear_estructura.R <- Script para generar la estructura de carpetas
└── README.md <- Este archivo



# Tecnologías utilizadas

- **RStudio** (IDE principal)  
- **Git + GitHub** (control de versiones y colaboración)  
- **R Markdown / knitr** (informes y presentaciones reproducibles)  
- **Shiny / Flexdashboard** (visualizaciones dinámicas)  
- **LaTeX** (para presentación PDF con formato académico)  




