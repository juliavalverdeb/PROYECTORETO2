# MODULO8_RETO2_JULIAVALVERDE

Proyecto Ciencia de Datos Reproducible 
- **Julia Valverde**  
Máster en Behavioral Data Science  
2025

Datos utilizados: Gapminder 

Este proyecto forma parte del Máster en Behavioral Data Science y tiene como objetivo poner en práctica todas las fases de un proyecto de **Ciencia de Datos Reproducible**: desde la carga y depuración de datos hasta la creación de dashboards dinámicos y la comunicación de resultados.


# 1. Audiencia y marco teórico

El siguiente proyecto está dirigido a investigadores y estudiantes de ciencias sociales y psicología, que trabajan con datos demográficos y aspectos relacionados con el bienestar social. 

Esta audiencia cuenta con un nivel intermedio o alto de conocimientos sobre análisis de datos y comprensión de fenómenos demográficos, por lo que requiere una herramienta que ofrezca tanto visión global como posibilidad de profundizar en detalles comparativos.


# 2. Cuestiones que pretende responder

El analisis propuesto y la visualización pretenden responder las siguientes cuestiones:

1. ¿Cómo ha evolucionado la esperanza de vida en los diferentes continentes entre 1950 y 2019? 

2. ¿Existe relación entre esperanza de vida y fertilidad? 

3. ¿Cuál es la magnitud de la brecha en la esperanza de vida entre Europa y África a lo largo de las décadas? 

4. ¿Cómo se distribuye la esperanza de vida a nivel mundial en momentos clave (por ejemplo 1950, 1980 y 2019)? 

Estas cuestiones guiarán el diseño del dashboard, de manera que cada gráfico aporte información relevante para una exploración analítica de calidad.


# 3. Objetivo principal del proyecto:

El objetivo principal del proyecto es explorar y visualizar la evolución de la esperanza de vida al nacer en distintos países y regiones del mundo entre 1950 y 2019 para poder identificar patrones, tendencias y desigualdades demográficas a lo largo del tiempo, Se han utilizao datos del conjunto de Gapminder (https://www.gapminder.org/).


# 4. Objetivos específicos del proyecto:

__1. Importar y depurar los datos de esperanza de vida de Gapminder.__ Asegurar que la información esté limpia y lista para el análisis, filtrando los países de interés y gestionando posibles valores perdidos.

__2. Recodificar y generar variables relevantes para comparaciones y transformar los datos a un formato adecuado para análisis temporal y comparativo.__ Reestructurar la base de datos en formato largo, permitiendo trabajar con series temporales.

__3. Explorar la evolución temporal y regional de la esperanza de vida desde 1950 hasta 2019.__ Calcular y visualizar tendencias medias por continente y resumir patrones relevantes en tablas y gráficos.

__4. Analizar la relación entre esperanza de vida y fertilidad mediante visualizaciones.__ Representar tendencias históricas comparadas para identificar similitudes, diferencias y posibles patrones regionales o temporales.

__5. Generar un proyecto totalmente reproducible, con informe técnico y dashboard, que resuma los hallazgos principales.__ Comunicar los resultados del análisis comparativo mediante R Markdown, garantizando la transparencia y reproducibilidad del proyecto.


# 5. Estructura del repositorio

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


# 6. Tecnologías utilizadas

- **RStudio** (IDE principal)  
- **Git + GitHub** (control de versiones y colaboración)  
- **R Markdown / knitr** (informes y presentaciones reproducibles)  
- **Shiny / Flexdashboard** (visualizaciones dinámicas)  
- **LaTeX** (para presentación PDF con formato académico)  

# 7. Instalación

Este proyecto está desarrollado en R. Para reproducirlo, asegúrate de tener instalados los siguientes paquetes:
**Paquetes utilizados:**

install.packages(c("tidyverse", "dplyr", "ggplot2", "readr", "countrycode", "here", "shiny", "flexdashboard", "knitr", "rmarkdown"))

# 8. Reproducir el entorno e instrucciones de uso

1. Clona el repositorio: https://github.com/juliavalverdeb/PROYECTORETO2.git 

2. Abre el proyecto en RStudio (.Rproj).

3. Ejecuta el script crear_estructura.R para generar la estructura de carpetas si es necesario.

4. Corre los scripts de la carpeta codigo_depuracion/ para importar y limpiar los datos.

5. Abre el archivo Dashboard/codigo/app.R o dashboard.Rmd para visualizar el dashboard.

6. Genera el informe técnico desde Informe/codigo/informe.Rmd.

7. Abre Presentacion/codigo/presentacion.Rmd para visualizar la presentación

# 9. Conclusiones 

La esperanza de vida ha aumentado en todos los continentes entre 1950 y 2019, aunque con desigualdades.

La fertilidad muestra una correlación negativa con la esperanza de vida: los países con menor fertilidad suelen tener una mayor longevidad. Dicha correlación no implica causalidad, pero una posible 
interpretación es que la reducción de la fertilidad se asocia con mejores condiciones de salud y desarrollo, que a su vez elevan la esperanza de vida. 

Europa y las Américas presentan altos niveles de esperanza de vida y bajas tasas de fertilidad, mientras que África muestra la situación opuesta.

> Nota: Debido a su naturaleza interactiva, el dashboard no puede guardarse como `.html` estático. Se incluye una captura de pantalla en `Dashboard/html/` como referencia visual.

## ¿Cómo visualizar el dashboard interactivo?

Este dashboard está desarrollado con `flexdashboard` y `Shiny`, por lo que se ejecuta como una aplicación interactiva.

### Pasos para visualizarlo:

1. Abre el proyecto en RStudio (`proyectoreto2.Rproj`).
2. Navega a la carpeta `Dashboard/codigo/` y abre el archivo `dashboard.Rmd`.
3. Haz clic en **Run Document** (arriba a la izquierda del script).
4. El dashboard se abrirá en el visor de RStudio o en tu navegador, con filtros interactivos y gráficos dinámicos.







