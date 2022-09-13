library(tidyverse)
install.packages("vroom")
library(vroom)


base_prf <- vroom("http://orcamento.sf.prefeitura.sp.gov.br/orcamento/uploads/2022/basedadosexecucaoConsolidados_0822.csv")
