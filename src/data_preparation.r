################################################################################################
#
# ANÁLISE DE DADOS
# Por: RICARDO REIS
#
# CASE - BANCARIZATION
#
#
################################################################################################


# Carrega Pacotes ---------------------------------------------------------

library(dplyr)
library(tidyr)
library(lubridate)
library(zoo)
library(ggplot2)
library(plotly)
library(wordcloud2)
library(forcats)
library(geobr)
library(sf)
library(tmap)
library(RColorBrewer)
display.brewer.all()

# Limpando o console.
cat("\014") 
# Limpando o Global Environment.
rm(list = ls())


# Leitura de Dados --------------------------------------------------------
agencias <- read.csv("~/R-Projetos/Exploratory-Data-Analysis-Bancarization/data/raw/Agencias.csv", encoding="UTF-8")
View(agencias)
glimpse(agencias)


# Tidying  ----------------------------------------------------------------
agencias_sp <- agencias %>%
  filter(UF == "SP" & Municipio == "SAO PAULO")


# Leitura de Dados Espaciais ----------------------------------------------
mun <- st_read("~/R-Projetos/Exploratory-Data-Analysis-Bancarization/data/raw/municipio_sp.shp")
plot(mun) # Plota todas as colunas
plot(st_geometry(mun)) # Plota apenas a geometria
head(mun)
class(mun$geom)
















