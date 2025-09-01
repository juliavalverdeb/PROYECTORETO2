# Script para crear la estructura de carpetas del proyecto Gapminder
# con .gitkeep en cada carpeta para que GitHub no las ignore si están vacías.

# Función para crear carpeta y archivo .gitkeep
crear_carpeta <- function(carpeta) {
  if (!dir.exists(carpeta)) {
    dir.create(carpeta, recursive = TRUE)
    message("Carpeta creada: ", carpeta)
  } else {
    message("Ya existe: ", carpeta)
  }
  
  # Crear archivo .gitkeep dentro de la carpeta (para que Git la suba aunque esté vacía)
  gitkeep_path <- file.path(carpeta, ".gitkeep")
  if (!file.exists(gitkeep_path)) {
    file.create(gitkeep_path)
    message("Archivo .gitkeep creado en: ", carpeta)
  }
}

# Crear toda la estructura del proyecto
crear_carpeta("Datos/base_original")
crear_carpeta("Datos/base_depurada")
crear_carpeta("Datos/codigo_depuracion")
crear_carpeta("Dashboard/codigo")
crear_carpeta("Dashboard/html")
crear_carpeta("Informe/codigo")
crear_carpeta("Informe/pdf")
crear_carpeta("Presentacion/codigo")
crear_carpeta("Presentacion/exportado")

message("✅ Estructura de proyecto creada correctamente con .gitkeep en cada carpeta.")

getwd()
