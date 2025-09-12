# Código depuración datos Gapminder
# Proyecto: Ciencia de Datos Reproducible - Gapminder
# Objetivo: Depurar datos de esperanza de vida en España, Francia, Italia y Alemania

# Librerías 

library(readr)
library(dplyr)
library(tidyr)

# 1. Importar datos
datos_raw <- read_csv("Datos/base_original/LifeExpact.csv")

# 2. Filtrar solo los países de interés
paises <- c("Spain", "France", "Italy", "Germany")
datos_filtrados <- datos_raw %>% 
  filter(country %in% paises)

# 3. Transformar a formato largo
datos_largos <- datos_filtrados %>%
  pivot_longer(
    cols = -country,
    names_to = "year",
    values_to = "life_expectancy"
  ) %>%
  mutate(year = as.integer(year))

# 4. Guardar base depurada
write_csv(datos_largos, "Datos/base_depurada/LifeExpact_dep.csv")

# Comprobación con gráficos que todo funciona

library(ggplot2)

ggplot(datos_largos, aes(x = year, y = life_expectancy, color = country)) +
  geom_line(size = 1) +
  labs(
    title = "Evolución de la esperanza de vida (España, Francia, Italia, Alemania)",
    x = "Año",
    y = "Esperanza de vida"
  ) +
  theme_minimal()

