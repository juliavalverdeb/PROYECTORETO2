# Código depuración datos Gapminder
# Proyecto: Ciencia de Datos Reproducible - Gapminder
# Objetivo: Depurar datos de esperanza de vida en España, Francia, Italia y Alemania

# Instalar paquetes 

install.packages("dplyr")

# Librerías 

library(readr)
library(dplyr)
library(tidyr)
library(countrycode)
library(ggplot2)
library(here)

# 1. Importar datos

datos_life <- read_csv("Datos/base_original/LifeExpact.csv")

datos_fertility <- read.csv("Datos/base_original/fertility_rate.csv")

# 2. Renombrar columnas para que coincidan los datos 

fertility <- datos_fertility %>%
  rename(
    country = name,
    year = time,
    fertility_rate = `Babies.per.woman`
  )

names(datos_fertility)

# 3. Añadir columna de continente

install.packages("countrycode")
datos_life <- datos_life %>%
  mutate(continent = countrycode(sourcevar = country,
                                 origin = "country.name",
                                 destination = "continent"))

# 3. Transformar a formato largo

datos_largos <- datos_life %>%
  pivot_longer(
    cols = -c(country, continent),
    names_to = "year",
    values_to = "life_expectancy"
  ) %>%
  mutate(year = as.integer(year))


# 4. Filtrar rango de años (1950-2019)

life_long <- datos_largos %>%
  filter(year >= 1950, year <= 2019)

fertility_long <- fertility %>%
  filter(year >= 1950, year <= 2019)

# 6. Unir ambas tablas por país y año

datos <- life_long %>%
  inner_join(fertility_long, by = c("country", "year"))

  mutate(year = as.integer(year))

# 8. Guardar base depurada final

write_csv(datos, "Datos/base_depurada/LifeExpact_Fertility_dep.csv")
  
# 9. Comprobación rápida
print(head(datos))
print(dim(datos))

# 5. Gráfico de comprobación (promedio por continente)
ggplot(datos %>%
         group_by(continent, year) %>%
         summarise(life_expectancy = mean(life_expectancy, na.rm = TRUE), .groups = "drop"),
       aes(x = year, y = life_expectancy, color = continent)) +
  geom_line(size = 1) +
  labs(
    title = "Evolución de la esperanza de vida por continentes",
    x = "Año",
    y = "Esperanza de vida"
  ) +
  theme_minimal()
