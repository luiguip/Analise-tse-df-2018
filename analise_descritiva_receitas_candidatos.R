#Retira notação científica
options(scipen=10000)
#Analizar receita por sexo
ggplot(receitas_candidatos, aes(x=))
#Analizar receita por partido
ggplot(receitas_candidatos, aes(x=SG_PARTIDO, y=VR_RECEITA)) + geom_col()
