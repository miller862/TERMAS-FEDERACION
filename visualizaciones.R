options(scipen=999)

ingresos_mensuales %>% 
  filter(MES==1) %>% 
ggplot(aes(x=fecha, y=ventasNETAS)) + 
  geom_bar(stat = "identity")

