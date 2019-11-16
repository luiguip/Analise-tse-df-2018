library('tidyverse')

import_csv <- function(path, file){
  path %>%
    paste0(file) %>%
    read_csv2(locale=locale(encoding = 'LATIN1'))
}

path <- '/home/luigui/Documents/data-science/julio2/'

receitas_candidatos <- import_csv(path, 'receitas_candidatos_2018_DF.csv')
despesas_contratadas <- import_csv(path, 'despesas_contratadas_candidatos_2018_DF.csv')

receita_por_partido <- receitas_candidatos %>%
  group_by(SG_PARTIDO) %>%
  summarise(receita_partido = sum(VR_RECEITA))

receita_por_candidato <- receitas_candidatos %>%
  group_by(NM_CANDIDATO, SG_PARTIDO) %>%
  summarise(receita_candidato = sum(VR_RECEITA))

despesa_por_partido <- despesas_contratadas %>%
  group_by(SG_PARTIDO) %>%
  summarise(despesa_partido = sum(VR_DESPESA_CONTRATADA))

despesa_por_candidato <- despesas_contratadas %>%
  group_by(NM_CANDIDATO, SG_PARTIDO) %>%
  summarise(despesa_candidato = sum(VR_DESPESA_CONTRATADA))

saldo_por_partido <- receita_por_partido %>%
  inner_join(despesa_por_partido)

saldo_por_candidato <- receita_por_candidato %>%
  inner_join(despesa_por_candidato)