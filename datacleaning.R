
library(readxl)
library(tidyverse)
library(data.table)
library(ggplot2)
library(rstatix)
library(lubridate)

#2024
ene_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 2,range ="A4:L35" ) %>% 
  mutate(MES="ENERO")
feb_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 3,range ="A4:L35" ) %>%
  mutate(MES="FEBRERO")
mar_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 4,range ="A4:L35" )%>%
  mutate(MES="MARZO")
abr_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 5,range ="A4:L35" )%>%
  mutate(MES="ABRIL")
may_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 6,range ="A4:L35" )%>%
  mutate(MES="MAYO")
jun_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 7,range ="A4:L35" )%>%
  mutate(MES="JUNIO")

#procedimiento para compilar un mes
A2024<-rbindlist(list(ene_24,feb_24,mar_24,abr_24,may_24,jun_24)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2024")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA) %>% 
  select(-ESTE,-ORDZ)


#2023
ene_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 2,range ="A4:K35" )%>% 
  mutate(MES="ENERO")
feb_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 3,range ="A4:K35" )%>%
  mutate(MES="FEBRERO")
mar_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 4,range ="A4:K35" )%>%
  mutate(MES="MARZO")
abr_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 5,range ="A4:K35" )%>%
  mutate(MES="ABRIL")
may_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 6,range ="A4:K35" )%>%
  mutate(MES="MAYO")
jun_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 7,range ="A4:K35" )%>%
  mutate(MES="JUNIO")



jul_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 8,range ="A4:L35" )%>%
  mutate(MES="JULIO") %>% 
  select(-ESTE)
ago_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 9,range ="A4:L35" )%>%
  mutate(MES="AGOSTO")%>% 
  select(-ESTE)
sep_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 10,range ="A4:L35" )%>%
  mutate(MES="SEPTIEMBRE")%>% 
  select(-ESTE)
oct_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 11,range ="A4:L35" )%>%
  mutate(MES="OCTUBRE")%>% 
  select(-ESTE)
nov_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 12,range ="A4:L35" )%>%
  mutate(MES="NOVIEMBRE")%>% 
  select(-ESTE)
dic_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 13,range ="A4:L35" )%>%
  mutate(MES="DICIEMBRE")%>% 
  select(-ESTE)

#procedimiento para compilar un mes
A2023<-rbindlist(list(ene_23,feb_23,mar_23,abr_23,may_23,jun_23,jul_23,ago_23,sep_23,oct_23,nov_23,dic_23)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2023")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA) %>% 
  select(-ORDZ)

#2022
ene_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 2,range ="A4:K35" )%>% 
  mutate(MES="ENERO")
feb_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 3,range ="A4:K35" )%>%
  mutate(MES="FEBRERO")
mar_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 4,range ="A4:K35" )%>%
  mutate(MES="MARZO")
abr_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 5,range ="A4:K35" )%>%
  mutate(MES="ABRIL")
may_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 6,range ="A4:K35" )%>%
  mutate(MES="MAYO")
jun_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 7,range ="A4:K35" )%>%
  mutate(MES="JUNIO")
jul_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 8,range ="A4:K35" )%>%
  mutate(MES="JULIO")
ago_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 9,range ="A4:K35" )%>%
  mutate(MES="AGOSTO")
sep_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 10,range ="A4:K35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 11,range ="A4:K35" )%>%
  mutate(MES="OCTUBRE")
nov_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 12,range ="A4:K35" )%>%
  mutate(MES="NOVIEMBRE")
dic_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 13,range ="A4:K35" )%>%
  mutate(MES="DICIEMBRE")

#procedimiento para compilar un mes
A2022<-rbindlist(list(ene_22,feb_22,mar_22,abr_22,may_22,jun_22,jul_22,ago_22,sep_22,oct_22,nov_22,dic_22)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2022")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA) %>% 
  select(-ORDZ)

#2021     ##HAY PROBLEMAS EN LOS DATOS DE ESTOS AÑOS
ene_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 2,range ="A4:J35" )%>% 
  mutate(MES="ENERO")
feb_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 3,range ="A4:J35" )%>%
  mutate(MES="FEBRERO")
mar_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 4,range ="A4:J35" )%>%
  mutate(MES="MARZO")
abr_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 5,range ="A4:J35" )%>%
  mutate(MES="ABRIL")
may_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 6,range ="A4:J35" )%>%
  mutate(MES="MAYO")
jun_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 7,range ="A4:J35" )%>%
  mutate(MES="JUNIO")
## hasta acá va bien luego carga datos de 2019

# jul_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 8,range ="A4:J35" )%>%
#   mutate(MES="JULIO")
# ago_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 9,range ="A4:J35" )%>%
#   mutate(MES="AGOSTO")
# sep_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 10,range ="A4:J35" )%>%
#   mutate(MES="SEPTIEMBRE")
# oct_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 11,range ="A4:J35" )%>%
#   mutate(MES="OCTUBRE")
# nov_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 12,range ="A4:J35" )%>%
#   mutate(MES="NOVIEMBRE")
# dic_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 13,range ="A4:J35" )%>%
#   mutate(MES="DICIEMBRE")

#COMPILAMOS LO QUE TENEMOS DE 2021
A2021<-rbindlist(list(ene_21,feb_21,mar_21,abr_21,may_21,jun_21)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2021")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)

  
#2020
ene_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2020.xlsx",sheet = 2,range ="A4:I35" )%>% 
  mutate(MES="ENERO")
##ACA SE AGREGA LA VENTA ONLINE
feb_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2020.xlsx",sheet = 3,range ="A4:J35" )%>%
  mutate(MES="FEBRERO")
mar_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 4,range ="A4:J35" )%>%
  mutate(MES="MARZO")
##a mitad de marzo cierra por pandemia

#COMPILAMOS LO QUE TENEMOS DE 2020
ene_20<- ene_20 %>%
  mutate(ONLINE=NA) %>% 
  relocate(ONLINE,.after=ACUATICO)
  


A2020<-rbindlist(list(ene_20,feb_20,mar_20)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2020")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)


#2019
ene_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 2,range ="A4:I35" )%>% 
  mutate(MES="ENERO")
feb_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 3,range ="A4:I35" )%>%
  mutate(MES="FEBRERO")
mar_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 4,range ="A4:I35" )%>%
  mutate(MES="MARZO")
abr_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 5,range ="A4:I35" )%>%
  mutate(MES="ABRIL")
may_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 6,range ="A4:I35" )%>%
  mutate(MES="MAYO")
jun_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 7,range ="A4:I35" )%>%
  mutate(MES="JUNIO")
jul_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 8,range ="A4:I35" )%>%
  mutate(MES="JULIO")
ago_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 9,range ="A4:I35" )%>%
  mutate(MES="AGOSTO")
sep_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 10,range ="A4:I35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 11,range ="A4:I35" )%>%
  mutate(MES="OCTUBRE")
nov_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 12,range ="A4:I35" )%>%
  mutate(MES="NOVIEMBRE")

#DICIEMBRE SIN DATOS EN CAMBIO DE GESTION
#CONSIDERO QUE CORRESPONDE MEJOR NO SUMARLO QUE SUMARLO EN 0
dic_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 13,range ="A4:I35" )%>%
  mutate(MES="DICIEMBRE")

A2019<-rbindlist(list(ene_19,feb_19,mar_19,abr_19,may_19,jun_19,jul_19,ago_19,sep_19,oct_19,nov_19,dic_19)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2019")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ONLINE=NA) %>%                        #agrego online
  relocate(ONLINE,.after=ACUATICO)


#2018
ene_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 2,range ="A4:I35" )%>% 
  mutate(MES="ENERO")
feb_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 3,range ="A4:I35" )%>%
  mutate(MES="FEBRERO")
mar_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 4,range ="A4:I35" )%>%
  mutate(MES="MARZO")
abr_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 5,range ="A4:I35" )%>%
  mutate(MES="ABRIL")
may_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 6,range ="A4:I35" )%>%
  mutate(MES="MAYO")
jun_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 7,range ="A4:I35" )%>%
  mutate(MES="JUNIO")
jul_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 8,range ="A4:I35" )%>%
  mutate(MES="JULIO")
ago_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 9,range ="A4:I35" )%>%
  mutate(MES="AGOSTO")
sep_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 10,range ="A4:I35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 11,range ="A4:I35" )%>%
  mutate(MES="OCTUBRE")
nov_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 12,range ="A4:I35" )%>%
  mutate(MES="NOVIEMBRE")
dic_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 13,range ="A4:I35" )%>%
  mutate(MES="DICIEMBRE")

A2018<-rbindlist(list(ene_18,feb_18,mar_18,abr_18,may_18,jun_18,jul_18,ago_18,sep_18,oct_18,nov_18,dic_18)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2018")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ONLINE=NA) %>%                        #agrego online
  relocate(ONLINE,.after=ACUATICO)

#2017
ene_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 2,range ="A4:I35" )%>% 
  mutate(MES="ENERO")
feb_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 3,range ="A4:I35" )%>%
  mutate(MES="FEBRERO")
mar_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 4,range ="A4:I35" )%>%
  mutate(MES="MARZO")
abr_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 5,range ="A4:I35" )%>%
  mutate(MES="ABRIL")
may_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 6,range ="A4:I35" )%>%
  mutate(MES="MAYO")
jun_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 7,range ="A4:I35" )%>%
  mutate(MES="JUNIO")
jul_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 8,range ="A4:I35" )%>%
  mutate(MES="JULIO")
ago_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 9,range ="A4:I35" )%>%
  mutate(MES="AGOSTO")
sep_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 10,range ="A4:I35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 11,range ="A4:I35" )%>%
  mutate(MES="OCTUBRE")
nov_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 12,range ="A4:I35" )%>%
  mutate(MES="NOVIEMBRE")
dic_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 13,range ="A4:I35" )%>%
  mutate(MES="DICIEMBRE")

A2017<-rbindlist(list(ene_17,feb_17,mar_17,abr_17,may_17,jun_17,jul_17,ago_17,sep_17,oct_17,nov_17,dic_17)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2017")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ONLINE=NA) %>%                        #agrego online
  relocate(ONLINE,.after=ACUATICO)

#2016
ene_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 2,range ="A4:I35" )%>% 
  mutate(MES="ENERO")
feb_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 3,range ="A4:I35" )%>%
  mutate(MES="FEBRERO")
mar_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 4,range ="A4:I35" )%>%
  mutate(MES="MARZO")
abr_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 5,range ="A4:I35" )%>%
  mutate(MES="ABRIL")
may_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 6,range ="A4:I35" )%>%
  mutate(MES="MAYO")
jun_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 7,range ="A4:I35" )%>%
  mutate(MES="JUNIO")
jul_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 8,range ="A4:I35" )%>%
  mutate(MES="JULIO")
ago_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 9,range ="A4:I35" )%>%
  mutate(MES="AGOSTO")
sep_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 10,range ="A4:I35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 11,range ="A4:I35" )%>%
  mutate(MES="OCTUBRE")
nov_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 12,range ="A4:I35" )%>%
  mutate(MES="NOVIEMBRE")
dic_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 13,range ="A4:I35" )%>%
  mutate(MES="DICIEMBRE")

A2016<-rbindlist(list(ene_16,feb_16,mar_16,abr_16,may_16,jun_16,jul_16,ago_16,sep_16,oct_16,nov_16,dic_16)) %>% 
  filter(FECHA>=1) %>%                                     #procedimiento para borrar filas innecesarias
  mutate(ANIO=as.factor("2016")) %>%                        #AGREGO AÑO
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ONLINE=NA) %>%                        #agrego online
  relocate(ONLINE,.after=ACUATICO)

#2015

ene_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 2,range ="A4:H35" )%>% 
  mutate(MES="ENERO")
feb_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 3,range ="A4:H35" )%>%
  mutate(MES="FEBRERO")
mar_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 4,range ="A4:H35" )%>%
  mutate(MES="MARZO")
abr_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 5,range ="A4:H35" )%>%
  mutate(MES="ABRIL")
may_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 6,range ="A4:H35" )%>%
  mutate(MES="MAYO")
jun_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 7,range ="A4:H35" )%>%
  mutate(MES="JUNIO")
jul_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 8,range ="A4:H35" )%>%
  mutate(MES="JULIO")
ago_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 9,range ="A4:H35" )%>%
  mutate(MES="AGOSTO")
sep_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 10,range ="A4:H35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 11,range ="A4:H35" )%>%
  mutate(MES="OCTUBRE")
nov_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 12,range ="A4:H35" )%>%
  mutate(MES="NOVIEMBRE")
##ACA SE AGREGA LA ENTRADA POR PARQUE ACUATICO
dic_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 13,range ="A4:I35" )%>%
  mutate(MES="DICIEMBRE")%>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2015")) %>%                        
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>% 
  mutate(ONLINE=NA,.after=ACUATICO)             #fue necesario hacer todo esto para combinar bien
  

A2015<-rbindlist(list(ene_15,feb_15,mar_15,abr_15,may_15,jun_15,jul_15,ago_15,sep_15,oct_15,nov_15)) %>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2015")) %>%                       
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ACUATICO=NA) %>% 
  relocate(ACUATICO,.after=NORTE) %>% 
  mutate(ONLINE=NA,.after=ACUATICO) %>% 
  rbind(dic_15)                                #recien aca sumo diciembre

#2014
ene_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 2,range ="A4:H35" )%>% 
  mutate(MES="ENERO")
feb_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 3,range ="A4:H35" )%>%
  mutate(MES="FEBRERO")
mar_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 4,range ="A4:H35" )%>%
  mutate(MES="MARZO")
abr_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 5,range ="A4:H35" )%>%
  mutate(MES="ABRIL")
may_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 6,range ="A4:H35" )%>%
  mutate(MES="MAYO")
jun_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 7,range ="A4:H35" )%>%
  mutate(MES="JUNIO")
jul_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 8,range ="A4:H35" )%>%
  mutate(MES="JULIO")
ago_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 9,range ="A4:H35" )%>%
  mutate(MES="AGOSTO")
sep_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 10,range ="A4:H35") %>%
  mutate(MES="SEPTIEMBRE")
oct_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 11,range ="A4:H35" )%>%
  mutate(MES="OCTUBRE")
nov_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 12,range ="A4:H35" )%>%
  mutate(MES="NOVIEMBRE")
dic_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 13,range ="A4:H35" )%>%
  mutate(MES="DICIEMBRE")


A2014<-rbindlist(list(ene_14,feb_14,mar_14,abr_14,may_14,jun_14,jul_14,ago_14,sep_14,oct_14,nov_14,dic_14)) %>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2014")) %>%                       
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ACUATICO=NA) %>% 
  relocate(ACUATICO,.after=NORTE) %>% 
  mutate(ONLINE=NA,.after=ACUATICO)

#2013
ene_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 2,range ="A4:H35" )%>% 
  mutate(MES="ENERO")
feb_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 3,range ="A4:H35" )%>%
  mutate(MES="FEBRERO")
mar_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 4,range ="A4:H35" )%>%
  mutate(MES="MARZO")
abr_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 5,range ="A4:H35" )%>%
  mutate(MES="ABRIL")
may_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 6,range ="A4:H35" )%>%
  mutate(MES="MAYO")
jun_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 7,range ="A4:H35" )%>%
  mutate(MES="JUNIO")
jul_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 8,range ="A4:H35" )%>%
  mutate(MES="JULIO")
ago_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 9,range ="A4:H35" )%>%
  mutate(MES="AGOSTO")
sep_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 10,range ="A4:H35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 11,range ="A4:H35" )%>%
  mutate(MES="OCTUBRE")
nov_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 12,range ="A4:H35" )%>%
  mutate(MES="NOVIEMBRE")
dic_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 13,range ="A4:H35" )%>%
  mutate(MES="DICIEMBRE")

A2013<-rbindlist(list(ene_13,feb_13,mar_13,abr_13,may_13,jun_13,jul_13,ago_13,sep_13,oct_13,nov_13,dic_13)) %>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2013")) %>%                       
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ACUATICO=NA) %>% 
  relocate(ACUATICO,.after=NORTE) %>% 
  mutate(ONLINE=NA,.after=ACUATICO)


#2012
ene_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 2,range ="A4:H35" )%>% 
  mutate(MES="ENERO")
feb_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 3,range ="A4:H35" )%>%
  mutate(MES="FEBRERO")
mar_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 4,range ="A4:H35" )%>%
  mutate(MES="MARZO")
abr_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 5,range ="A4:H35" )%>%
  mutate(MES="ABRIL")
may_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 6,range ="A4:H35" )%>%
  mutate(MES="MAYO")
jun_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 7,range ="A4:H35" )%>%
  mutate(MES="JUNIO")
jul_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 8,range ="A4:H35" )%>%
  mutate(MES="JULIO")
ago_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 9,range ="A4:H35" )%>%
  mutate(MES="AGOSTO")
sep_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 10,range ="A4:H35" )%>%
  mutate(MES="SEPTIEMBRE")
oct_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 11,range ="A4:H35" )%>%
  mutate(MES="OCTUBRE")
nov_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 12,range ="A4:H35" )%>%
  mutate(MES="NOVIEMBRE")
dic_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 13,range ="A4:H35" )%>%
  mutate(MES="DICIEMBRE")

A2012<-rbindlist(list(ene_12,feb_12,mar_12,abr_12,may_12,jun_12,jul_12,ago_12,sep_12,oct_12,nov_12,dic_12)) %>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2012")) %>%                       
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ACUATICO=NA) %>% 
  relocate(ACUATICO,.after=NORTE) %>% 
  mutate(ONLINE=NA,.after=ACUATICO)

#2011
#NO HAY DESAGREGADOA NTES DE DIC/2011
dic_11<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2011.xlsx",sheet = 2,range ="A4:H35" )%>%
  mutate(MES="DICIEMBRE") %>% 
  filter(FECHA>=1) %>%                                    
  mutate(ANIO=as.factor("2011")) %>%                       
  relocate(ANIO,.before =DIA) %>% 
  relocate(MES,.before=DIA)%>%
  mutate(ACUATICO=NA) %>% 
  relocate(ACUATICO,.after=NORTE) %>% 
  mutate(ONLINE=NA,.after=ACUATICO)

####pasamos a un unico dataset

TODOCRUDO<-rbindlist(list(dic_11,A2012,A2013,A2014,A2015,A2016,A2017,A2018,A2019,A2020,A2021,A2022,A2023,A2024))

TODO<-TODOCRUDO %>% 
  mutate(MES= as.factor(MES),
         DIA=as.factor(DIA),
         TIEMPO=as.factor(TIEMPO),
         ONLINE=as.numeric(ONLINE),
         LIBERADOS=as.numeric(LIBERADOS)) %>% 
  select(-NORTE,-ACUATICO,-PRINCIPAL) %>% 
  rename(TOTAL="POR DIA" ) %>% 
  mutate(TOTALNETO=TOTAL-LIBERADOS) %>% 
  relocate(TIEMPO,.after=TOTALNETO) %>% 
  mutate(ID=row_number())

# Define el vector de etiquetas de los meses
meses <- c(
  "ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", 
  "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE")

TODO<-TODO %>%
  mutate(MES = case_when( MES == "ENERO" ~ 1, MES == "FEBRERO" ~ 2,
                             MES == "MARZO" ~ 3, MES == "ABRIL" ~ 4,
                             MES == "MAYO" ~ 5, MES == "JUNIO" ~ 6,
                             MES == "JULIO" ~ 7, MES == "AGOSTO" ~ 8,
                             MES == "SEPTIEMBRE" ~ 9, MES == "OCTUBRE" ~ 10,
                             MES == "NOVIEMBRE" ~ 11, MES == "DICIEMBRE" ~ 12, TRUE ~ NA_real_ ))
         


# Convierte la columna MES a factor con etiquetas de los meses

TODO<- TODO %>%
  mutate(MES = factor(MES, levels = 1:12, labels = meses),
         LIBERADOS = ifelse(is.na(LIBERADOS), 0, LIBERADOS),
         TOTAL = ifelse(is.na(TOTAL), 0, TOTAL),
         TOTALNETO=TOTAL-LIBERADOS)

TODO<- TODO %>%
  mutate(MES = factor(MES),
         LIBERADOS = ifelse(is.na(LIBERADOS), 0, LIBERADOS),
         TOTAL = ifelse(is.na(TOTAL), 0, TOTAL),
         TOTALNETO=TOTAL-LIBERADOS)

ingresos_anuales<-TODO%>%
  group_by(ANIO) %>% 
  summarise(ventasNETAS=sum(TOTALNETO),
            INGRESOS=sum(TOTAL))

ingresos_mensuales<-TODO%>%
  group_by(ANIO,MES) %>% 
  summarise(ventasNETAS=sum(TOTALNETO),
            INGRESOS=sum(TOTAL)) 

ingresos_mensuales$fecha<-as.Date(paste(ingresos_mensuales$ANIO,
                                         ingresos_mensuales$MES,'01',
                                         sep = '-',
                                         format='%Y-%m-%d'))


primer_semestre<-ingresos_mensuales %>% 
  filter(MES %in% c( "ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO","JUNIO")) %>% 
  group_by(ANIO) %>% 
  summarise(total=sum(ventasNETAS)) %>% 
  view()


primer_semestre_mes<-ingresos_mensuales %>% 
  filter(MES %in% c( "ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO","JUNIO")) %>% 
  group_by(ANIO, MES) %>% 
  summarise(total=sum(ventasNETAS)) %>% 
  view()

primer_semestre_mes$fecha<-as.Date(paste(primer_semestre_mes$ANIO,
                                         primer_semestre_mes$MES,'01',
                                        sep = '-',
                                        format='%Y-%m-%d'))

ingresos_mensuales%>%
  filter(MES==12)
  

###Carga de datos de PBI

pbi<-read_excel("data/PBI.xlsx")
#Agregamos un anio al PBI para ver los efectos sobre la temporada siguiente
pbi<-pbi %>% mutate(ANIO=ANIO+1)
pbi$ANIO<-as.factor(pbi$ANIO)

###carga de TC
tc<-read.csv("data/ITCRM.csv", sep = ";")
tc$ANIO<-tc$ï..Etiquetas.de.fila
tc$MES<-tc$Meses
tc$tipo_cambio<-tc$Promedio.de.ITCRM

tc<-tc %>% select(-ï..Etiquetas.de.fila, -Meses, -Promedio.de.ITCRM)
tc<-tc %>% mutate(ANIO=ANIO)
tc$ANIO<-as.factor(tc$ANIO)
tc$tipo_cambio <- gsub(",", ".", tc$tipo_cambio)
tc$tipo_cambio<-as.numeric(tc$tipo_cambio)
str(tc)

tc<-tc %>% group_by(ANIO) %>% summarise(tipo_cambio=mean(tipo_cambio))
### pedido previaje

previaje<-read.csv('data/pedido-previaje/loc_origen_destino_mes.csv',encoding="UTF-8")

destino_fed<-previaje %>% 
  filter(provincia_destino=="Entre Ríos") %>%
  filter(localidad_destino=="Federación")

#total de turistas recibidos por previaje
sum(destino_fed$viajeros)
sum(destino_fed$viajes)

#Turistas recibidos por edicion de previaje
destino_fed %>% 
  group_by(edicion) %>% 
  summarise(total_viajes=sum(viajes),
            total_viajeros=sum(viajeros))

#turistas recibidos por localidad de origen en todo el previaje
destino_fed %>% 
  group_by(localidad_origen) %>% 
  summarise(total_viajes=sum(viajes),
            total_viajeros=sum(viajeros)) %>% 
  arrange(-total_viajeros) %>% 
  view()

#Federaenses que se sirvieron del previaje para vacacionar en la argentina
origen_fed<-previaje %>% 
  filter(localidad_origen=="Federación") %>% 
  group_by(localidad_origen) %>% 
  summarise(total_viajes=sum(viajes),
            total_viajeros=sum(viajeros))

# turistas recibidos por fecha
previaje_por_fecha<-destino_fed %>% 
  group_by(mes_inicio) %>% 
  summarise(
            total_viajes=sum(viajes),
            total_viajeros=sum(viajeros)) %>% 
  mutate(fecha=as.Date(paste(mes_inicio, '01',sep = '-', format='%Y-%m-%d')))
  


primer_semestre_mes$fecha<-as.Date(paste(primer_semestre_mes$ANIO,
                                         primer_semestre_mes$MES,'01',
                                         sep = '-',
                                         format='%Y-%m-%d'))

tabla_combinada<-left_join(ingresos_mensuales, previaje_por_fecha, by='fecha')
tabla_combinada<-left_join(tabla_combinada, valores_entradas, by="fecha")
view(tabla_combinada)
enero<-tabla_combinada %>% filter(month(fecha)==1)
enero
tabla_combinada<-tabla_combinada %>% mutate(previaje_ind=ifelse(is.na(total_viajeros), 0,1))
tabla_combinada$previaje_ind<-as.factor(tabla_combinada$previaje_ind)

tabla_combinada$porc_previaje<-(tabla_combinada$total_viajeros/tabla_combinada$INGRESOS)*100

####graficos
graf1<-primer_semestre_mes %>% ggplot(aes(x=fecha, y=total)) + geom_col()
graf2<-primer_semestre%>% ggplot(aes(x=ANIO, y=total)) + geom_col()

plot(tabla_combinada$total_viajeros, tabla_combinada$INGRESOS)
tabla_combinada<-tabla_combinada %>% mutate(total_viajeros2=ifelse(is.na(total_viajeros), 0, total_viajeros))
plot(enero$INGRESOS, enero$total_viajeros2)
primer_semestre%>% ggplot() + geom_col(aes(x=ANIO, y=total))+geom_line(data = pbi, aes(y="PBI"))

valores_entradas<-read_excel("data/VALORES entradas.xlsx")
valores_entradas$fecha<-as.Date(valores_entradas$fecha, format='%Y-%m-%d')
tabla_combinada$montos_ingresos<-tabla_combinada$INGRESOS*tabla_combinada$`ENTRADA PROMEDIO`



#Grafico de linea y barra - Entradas y PBI
# Ajustar el coeficiente de escala
coef <- 1000  # Ajustar este valor según sea necesario

# Definir los límites del eje secundario
sec_axis_limits <- c(-15, 15)

# Calcular los límites correspondientes del eje primario

primary_axis_limits <- sec_axis_limits * coef

primer_trimestre<-primer_semestre %>% filter(meses<3)

ggplot(primer_semestre, aes(x = ANIO)) +
  geom_col(aes(y = total), fill = "blue") + 
  geom_line(data = pbi, aes(x = ANIO, y = PBI * coef, group = 1), color = "red", size=3 ) + 
  scale_y_continuous(
    name = "Total",
    sec.axis = sec_axis(~ . / coef, name = "PBI")
  ) +
  coord_cartesian(ylim = primary_axis_limits) + 
  theme_minimal() +
  labs(x = "Año", y = "Total") +
  theme(
    axis.title.y = element_text(color = "blue"),
    axis.title.y.right = element_text(color = "red")
  )

# Definir los límites del eje secundario
coef<-2500
sec_axis_limits <- c(70, 150)

# Calcular los límites correspondientes del eje primario

primary_axis_limits <- sec_axis_limits * coef

ggplot(primer_semestre, aes(x = ANIO)) +
  geom_col(aes(y = total), fill = "blue") + 
  geom_line(data = tc, aes(x = ANIO, y = tipo_cambio * coef, group = 1), color = "red", size=3 ) + 
  scale_y_continuous(
    name = "Total",
    sec.axis = sec_axis(~ . / coef, name = "PBI")
  ) +
  coord_cartesian(ylim = primary_axis_limits) + 
  theme_minimal() +
  labs(x = "Año", y = "Total") +
  theme(
    axis.title.y = element_text(color = "blue"),
    axis.title.y.right = element_text(color = "red")
  )

#Carga de datos de valor de entradas
write.csv(ingresos_mensuales, "ingresos mensuales.csv")
