#Retira notação científica
options(scipen=10000)

#Candidatos por partido
ggplot(receita_por_candidato, aes(reorder(SG_PARTIDO, SG_PARTIDO, function(x) - length(x)))) +
    geom_bar() +
    labs(title="Candidatos por Partido", y="Quantidade de candidatos", x="Partidos", caption = "Fonte: Pŕopria")
#Receita por partido
ggplot(receita_por_partido, aes(x=reorder(SG_PARTIDO, -receita_partido), y=receita_partido)) +
    geom_col() +
  labs(title="Receita por Partido", y="Receita", x="Partidos", caption = "Fonte: Pŕopria")
#Despesa por partido

#Analizar receita por fundo receita
ggplot(receitas_candidatos, aes(x=factor(DS_FONTE_RECEITA), y=VR_RECEITA)) +
    geom_bar(stat='identity', fill='steelblue') +
    labs(title="Receita por Fundo", y="Receita", x="Fonte Receita", caption="Fonte: Própria")
#Analizar receita por partido
ggplot(receita_por_partido, aes(x=reorder(SG_PARTIDO, -receita_partido), y=receita_partido)) + geom_col(color='skyblue',fill='steelblue')
#5 partidos que tiveram mais receita
