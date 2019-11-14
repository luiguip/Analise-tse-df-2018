#Retira notação científica
options(scipen=10000)
#Analizar receita por fundo receita
ggplot(receitas_candidatos, aes(x=factor(DS_FONTE_RECEITA), y=VR_RECEITA)) +
  geom_bar(stat='identity', fill='steelblue') +
  labs(title="Receita por Fundo", y="Receita", x="Fonte Receita", caption="Fonte: Própria")
#Analizar receita por partido
ggplot(receitas_candidatos, aes(x=SG_PARTIDO, y=VR_RECEITA)) + geom_col(color='skyblue',fill='steelblue')
#5 partidos que tiveram mais receita
