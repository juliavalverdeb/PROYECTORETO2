# install_packages.R
# Este script instala las librerías necesarias para ejecutar el dashboard

paquetes <- c(
  "flexdashboard",
  "shiny",
  "readr",
  "dplyr",
  "ggplot2",
  "tidyr",
  "maps",
  "here"
)

install.packages(paquetes)
