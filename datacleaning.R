library(readxl)
library(tidyverse)

?read_excel()

#2024
ene_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 2,range ="A4:L35" )
feb_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 3,range ="A4:L35" )
mar_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 4,range ="A4:L35" )
abr_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 5,range ="A4:L35" )
may_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 6,range ="A4:L35" )
jun_24<-read_excel("data/INGRESO TERMAS GESTION MAROZZINI/ANIO 2024.xlsx",sheet = 7,range ="A4:L35" )

A2024<-bind_rows(ene_24,feb_24,mar_24,abr_24,may_24,jun_24)
A2024<-do.call("rbind",list(ene_24,feb_24,mar_24,abr_24,may_24,jun_24))
?bind_rows

#2023
ene_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 2,range ="A4:K35" )
feb_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 3,range ="A4:K35" )
mar_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 4,range ="A4:K35" )
abr_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 5,range ="A4:K35" )
may_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 6,range ="A4:K35" )
jun_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 7,range ="A4:K35" )
jul_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 8,range ="A4:K35" )
ago_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 9,range ="A4:K35" )
sep_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 10,range ="A4:K35" )
oct_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 11,range ="A4:K35" )
nov_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 12,range ="A4:K35" )
dic_23<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2023.xlsx",sheet = 13,range ="A4:K35" )

#2022
ene_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 2,range ="A4:K35" )
feb_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 3,range ="A4:K35" )
mar_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 4,range ="A4:K35" )
abr_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 5,range ="A4:K35" )
may_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 6,range ="A4:K35" )
jun_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 7,range ="A4:K35" )
jul_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 8,range ="A4:K35" )
ago_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 9,range ="A4:K35" )
sep_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 10,range ="A4:K35" )
oct_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 11,range ="A4:K35" )
nov_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 12,range ="A4:K35" )
dic_22<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2022.xlsx",sheet = 13,range ="A4:K35" )

#2021     ##HAY PROBLEMAS EN LOS DATOS DE ESTOS AÑOS
ene_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 2,range ="A4:J35" )
feb_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 3,range ="A4:J35" )
mar_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 4,range ="A4:J35" )
abr_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 5,range ="A4:J35" )
may_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 6,range ="A4:J35" )
jun_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 7,range ="A4:J35" )
## hasta acá va bien luego carga datos de 2019
jul_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 8,range ="A4:J35" )
ago_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 9,range ="A4:J35" )
sep_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 10,range ="A4:J35" )
oct_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 11,range ="A4:J35" )
nov_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 12,range ="A4:J35" )
dic_21<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 13,range ="A4:J35" )

#2020
ene_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2020.xlsx",sheet = 2,range ="A4:I35" )
##ACA SE AGREGA LA VENTA ONLINE
feb_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2020.xlsx",sheet = 3,range ="A4:J35" )
mar_20<-read_excel("data/INGRESO TERMAS GESTION MILLER/ANIO 2021.xlsx",sheet = 4,range ="A4:J35" )
##a mitad de marzo cierra por pandemia

#2019
ene_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 2,range ="A4:I35" )
feb_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 3,range ="A4:I35" )
mar_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 4,range ="A4:I35" )
abr_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 5,range ="A4:I35" )
may_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 6,range ="A4:I35" )
jun_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 7,range ="A4:I35" )
jul_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 8,range ="A4:I35" )
ago_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 9,range ="A4:I35" )
sep_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 10,range ="A4:I35" )
oct_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 11,range ="A4:I35" )
nov_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 12,range ="A4:I35" )
#DICIEMBRE SIN DATOS EN CAMBIO DE GESTION
dic_19<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2019.xlsx",sheet = 13,range ="A4:I35" )

#2018
ene_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 2,range ="A4:I35" )
feb_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 3,range ="A4:I35" )
mar_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 4,range ="A4:I35" )
abr_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 5,range ="A4:I35" )
may_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 6,range ="A4:I35" )
jun_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 7,range ="A4:I35" )
jul_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 8,range ="A4:I35" )
ago_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 9,range ="A4:I35" )
sep_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 10,range ="A4:I35" )
oct_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 11,range ="A4:I35" )
nov_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 12,range ="A4:I35" )
dic_18<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2018.xlsx",sheet = 13,range ="A4:I35" )

#2017
ene_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 2,range ="A4:I35" )
feb_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 3,range ="A4:I35" )
mar_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 4,range ="A4:I35" )
abr_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 5,range ="A4:I35" )
may_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 6,range ="A4:I35" )
jun_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 7,range ="A4:I35" )
jul_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 8,range ="A4:I35" )
ago_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 9,range ="A4:I35" )
sep_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 10,range ="A4:I35" )
oct_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 11,range ="A4:I35" )
nov_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 12,range ="A4:I35" )
dic_17<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2017.xlsx",sheet = 13,range ="A4:I35" )

#2016
ene_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 2,range ="A4:I35" )
feb_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 3,range ="A4:I35" )
mar_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 4,range ="A4:I35" )
abr_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 5,range ="A4:I35" )
may_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 6,range ="A4:I35" )
jun_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 7,range ="A4:I35" )
jul_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 8,range ="A4:I35" )
ago_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 9,range ="A4:I35" )
sep_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 10,range ="A4:I35" )
oct_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 11,range ="A4:I35" )
nov_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 12,range ="A4:I35" )
dic_16<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2016.xlsx",sheet = 13,range ="A4:I35" )


#2015

ene_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 2,range ="A4:H35" )
feb_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 3,range ="A4:H35" )
mar_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 4,range ="A4:H35" )
abr_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 5,range ="A4:H35" )
may_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 6,range ="A4:H35" )
jun_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 7,range ="A4:H35" )
jul_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 8,range ="A4:H35" )
ago_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 9,range ="A4:H35" )
sep_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 10,range ="A4:H35" )
oct_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 11,range ="A4:H35" )
nov_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 12,range ="A4:H35" )
##ACA SE AGREGA LA ENTRADA POR PARQUE ACUATICO
dic_15<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2015.xlsx",sheet = 13,range ="A4:I35" )

#2014
ene_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 2,range ="A4:H35" )
feb_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 3,range ="A4:H35" )
mar_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 4,range ="A4:H35" )
abr_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 5,range ="A4:H35" )
may_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 6,range ="A4:H35" )
jun_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 7,range ="A4:H35" )
jul_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 8,range ="A4:H35" )
ago_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 9,range ="A4:H35" )
sep_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 10,range ="A4:H35" )
oct_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 11,range ="A4:H35" )
nov_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 12,range ="A4:H35" )
dic_14<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2014.xlsx",sheet = 13,range ="A4:H35" )

#2013
ene_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 2,range ="A4:H35" )
feb_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 3,range ="A4:H35" )
mar_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 4,range ="A4:H35" )
abr_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 5,range ="A4:H35" )
may_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 6,range ="A4:H35" )
jun_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 7,range ="A4:H35" )
jul_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 8,range ="A4:H35" )
ago_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 9,range ="A4:H35" )
sep_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 10,range ="A4:H35" )
oct_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 11,range ="A4:H35" )
nov_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 12,range ="A4:H35" )
dic_13<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2013.xlsx",sheet = 13,range ="A4:H35" )

#2012
ene_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 2,range ="A4:H35" )
feb_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 3,range ="A4:H35" )
mar_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 4,range ="A4:H35" )
abr_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 5,range ="A4:H35" )
may_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 6,range ="A4:H35" )
jun_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 7,range ="A4:H35" )
jul_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 8,range ="A4:H35" )
ago_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 9,range ="A4:H35" )
sep_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 10,range ="A4:H35" )
oct_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 11,range ="A4:H35" )
nov_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 12,range ="A4:H35" )
dic_12<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2012.xlsx",sheet = 13,range ="A4:H35" )

#2011
#NO HAY DESAGREGADOA NTES DE DIC/2011
dic_11<-read_excel("data/INGRESO TERMAS GESTION RACEDO/ANIO 2011.xlsx",sheet = 2,range ="A4:H35" )
