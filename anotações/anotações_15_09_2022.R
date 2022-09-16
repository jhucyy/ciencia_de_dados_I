library(tidyverse)

# carregar a base:
imdb_rds <- read_rds("./dados/imdb.rds")

# jeito de ver:
View(imdb_rds)
head(imdb_rds)
tail(imdb_rds)
glimpse(imdb_rds)


# manipulação -------------------------------------------------------------

# a manipulação é estruturada em alguns verbos principais:


# select() ----------------------------------------------------------------

# seleciona colunas.


# arrange() ---------------------------------------------------------------

# serve para reordenar linhas de uma base.
# em ordem crescente ou descrente para números.
# e em ordem alfabética. 



# filter() ----------------------------------------------------------------

# serve para filtrar linhas do data frame/tabela.



# mutate() ----------------------------------------------------------------

# cria novas colunas , ou altera o valor das colunas no data frame.



# sumarise() e group_by() -------------------------------------------------

# sumarise, faz sumarizações, reduz o valor total das colunas
# a um único valor.


# group_by, agrupa os valores das colunas no radical comum. 

# O que pode ser feito, agrupar a base e fazer sumarizações.



# left_join() -------------------------------------------------------------

# útil para unir informações diferentes. 

# obs: há outros tipos de joins. 



# Prática: ----------------------------------------------------------------

# usando o select:

imdb_rds %>% 
  select(titulo)

imdb_rds %>% 
  select(titulo, ano, orcamento)


# selecionando colunas com sequências

# seleciona da primeira a quinta coluna:
imdb_rds %>% 
  select(1:5)

# seleciona da coluna titulo a generos e as que tem 
# entre essas duas:
imdb_rds %>% 
  select(titulo:generos)

# funções auxiliares do select:

# seleciona coluna que comeca com tal texto:
imdb_rds %>% 
  select(starts_with("num"))

# seleciona colunas que terminam com tal texto:
imdb_rds %>% 
  select(ends_with("cao"))

# seleciona colunas que contêm tal texto:
imdb_rds %>% 
  select(contains("cri"))


# selecionar colunas por exclusão:
imdb_rds %>% 
  select(-titulo)


imdb_rds %>% 
  select(-c(titulo, generos, ano))


# combinação de várias funções:
imdb_rds %>% 
select(starts_with("num"), -titulo, -ends_with("ao"))



# arrange: ----------------------------------------------------------------

imdb_rds %>% 
  arrange(orcamento)


imdb_rds %>% 
  arrange(desc(orcamento))





















