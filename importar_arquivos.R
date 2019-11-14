library('tidyverse')

import_csv <- function(path, file){
  path %>%
    paste0(file) %>%
    read_csv2(locale=locale(encoding = 'LATIN1'))
}

path <- '/home/luigui/Documents/data-science/julio2/'

receitas_candidatos <- import_csv(path, 'receitas_candidatos_2018_DF.csv')
despesas_contratadas <- import_csv(path, 'despesas_contratadas_candidatos_2018_DF.csv')
