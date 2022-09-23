library(tidyverse)
library(readxl)

imdb <- read_csv("./dados/imdb.csv")

imdb %>% 
  filter(nota_imdb > 8 & num_criticas_publico > 100)

# filmes que em um dos idiomas tenha o português:
imdb %>% 
  filter(str_detect(idioma, "Portuguese"))


imdb %>% 
  filter(producao %in% c("Marvel Productions", "Marvel Enterprises", "Marvel Studios")) %>% view()


# Selecionar todos os filmes produzidos por uma variação da Marvel:
imdb %>% 
  filter(str_starts(producao, "Marvel"))



# Mutate ------------------------------------------------------------------

# Utilizado para criar colunas novas ou para substituir 
# o valor de uma coluna que já existe.

imdb %>% 
  mutate(duracao_horas = duracao/60, .after = duracao)


# .fter adiciona a nova coluna logo ao lado da coluna duracao


imdb %>% 
  mutate(lucro = receita - orcamento, .after = receita)




imdb %>% 
  mutate(lucro = receita - orcamento,
         houve_lucro = ifelse(lucro > 0, "Sim", "Não"), 
         .after = receita) %>% 
  View()



# if_else, é uma classificação binária, 
# "Ou aquilo é verdade ou não é verdade"




# case_when() -------------------------------------------------------------

# classificação com mais de duas categorias.

imdb %>% 
  mutate(categoria_nota = case_when(
    nota_imdb >= 8 ~ "Alta",
    nota_imdb < 8 & nota_imdb >= 5 ~ "Média",
    nota_imdb < 5 ~ "Baixa",
    TRUE ~ "Não classificado"
  ), .after = nota_imdb) %>% 
  view()




# Summarize ---------------------------------------------------------------

# sumariza várias colunas.
# uma medida de resumo.


imdb %>% 
  summarise(media_orcamento = mean(orcamento, na.rm = TRUE))


imdb %>% 
  summarise(media_orcamento = mean(orcamento, na.rm = T),
            media_receita = mean(receita, na.rm = T),
            media_lucro = mean(receita - orcamento, na.rm = T))




# n_distinct

imdb %>% 
  summarise(qtd_paises = n_distinct(pais))



# left_join()

# Serve para juntar duas tabelas a partir de uma chave.

band_members %>% 
  left_join(band_instruments)

# A primeira coluna define a estrutura das colunas


band_members %>% 
  left_join(band_instruments, by = "name")

# Especificando a coluna chave.


# A família de joins:
# left_join(), right_join(), inner_join(), full_join()

# inner_join - só retorna as informações presentes nas duas bases.

# ful_join - junta tudo, independente dos critérios.


# anti_join - mostra o que tem em um que não tem na outra base.

# right_join - parece o left_join, mas considera de forma invertida.
# esse é mais difícil de ser usado, para dados comuns usa-se o left. 


# vídeo com exemplo de vários joins:
# https://www.youtube.com/watch?v=xnUo25VRH70&t=1s




