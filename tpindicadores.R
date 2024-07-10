library(tidyverse)
DESTINOS<-read_csv("data/viajes_origen_destino_mes.csv")

DESTINOS %>% 
  group_by(provincia_destino) %>% 
  summarise(total=sum(viajeros)) %>% 
  arrange(-total) %>% 
  print(n=24)




PRESTADORES<-read_csv("data/prestadores_clae.csv")

PERSONAS<-read.csv("data/personas_beneficiarias.csv")


ST<-read.csv("data/serie-tiempo-turismo-interno-anual.csv")

ESTADIAMEDIA<-read.csv("data/estadia_media_anual.csv")

glimpse(ESTADIAMEDIA)

ESTADIAMEDIA %>% 
  filter(region_destino=="Litoral")
