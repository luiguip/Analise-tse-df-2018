#Retira notação científica
options(scipen=10000)
#Analizar receita por descricao_receita
ggplot(receitas_candidatos, aes(x=DS_RECEITA, y=VR_RECEITA)) + geom_col()
#Analizar receita por partido
ggplot(receitas_candidatos, aes(x=SG_PARTIDO, y=VR_RECEITA)) + geom_col()
