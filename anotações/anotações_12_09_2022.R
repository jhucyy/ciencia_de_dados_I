
# Anotações aula 12_09_2022 -----------------------------------------------


# Padronização das colunas ------------------------------------------------

# uma coluna só pode ter um tipo de dado. 
# ex: character, number, int etc.
# é possível observar qual o tipo de dado da coluna ao passar
# o mouse por cima do título.



# Organização dos dados ---------------------------------------------------

# Uma etapa comum no processo de organização e manipulação dos 
# dados é converter o formato dos dados das colunas para o formato
# desejado. 

# não é possível fazer calculos com objetos de texto. 
# o jeito mais simples de distinguir a classe de um determinado
# objeto é com a função class()


# Acessar coluna da base --------------------------------------------------

# Para acessar as colunas de um data frama utiliza-se 
# o $, ex:

imdb$ano

library(lubridate)

as.Date(imdb$data_lancamento)


# Vetor -------------------------------------------------------------------

# um vetor só pode guardar um tipo de objeto. 



# Pacotes -----------------------------------------------------------------

# Pacotes são uma coleção de funções;
# Por vezes os pacotes possuem bases de dados.
# E geralmente, eles apresentam alguma finalidade.

# função para instalar pacotes no r: install.packages("nome do pacote")
# O meta pacote mais completo no R é o tidyverse. 
# meta pacote é um pacote que armazena outros pacotes. 

# Para utilizar o pacote no r de forma corriqueira após
# a instalação, utiliza-se o comando library(pacote)


library(tidyverse)

# acessar funções de forma mais sucinta
# pacote::função

dplyr::summarize()



# Caminhos ----------------------------------------------------------------

# Caminho absoluto:

"~/pacotes_curso_r/"

# caminho absoluto não são viáveis para a reprodução. 
# porque o caminho é referenciado a raiz do computador do usuário. 
# não é uma boa prática.


# Caminhos relativos:
# São relativos em relação ao diretório de trabalho.

# adições:

# "../" sobe uma pasta além da pasta em que estamos trabalhando.
# "./" aparece arquivos não visíveis/ocultos.
# ambos ainda são caminhos relativos.


# quando o caminho começa com a "/" já é absoluto.



# tibble ------------------------------------------------------------------

# é um formato que deriva do data frame, a mudança significativa
# é que tem uma aparência diferenciada no console.
# o tibble mostra só as 10 primeiras linhas.




# Importação --------------------------------------------------------------

# importando arquivos csv:

imdb_csv <- read_csv("./dados/imdb.csv")


# csv de ponto e vírgula:

imadb_csv2 <- read_csv2("./dados/imdb2.csv")


# tab

imdb_delim <- read_delim("./dados/imdb.txt", delim = "\t")


# url

imdb_csv_url <- read_csv("https://raw.githubusercontent.com/curso-r/main-r4ds-1/master/dados/imdb.csv")

# arquivos excel 

# pacote readxl

imdb_excel <- readxl::read_xlsx("./dados/imdb.xlsx")


readxl::read_excel("./dados/imdb_nao_estruturada.xlsx", sheet = "Sheet1")


# Salvando dados:

imdb <- read_csv2("./dados/imdb2.csv")

filmes_nota_maior <- imdb %>% 
  filter(nota_imdb > 5.5)


write_csv(filmes_nota_maior, "filmes_nota_maior_5.csv")


# formato rds:
library(tidyverse)

imdb_rds <- read_rds("dados/imdb_rds.rds")








