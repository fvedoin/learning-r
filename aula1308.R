nomes <- c('Steve', 'Bill', 'Martin')
literatura <- c(8.5, 9, 10)
matematica <- c(9, 9.5, 7)
df1 <- data.frame(cbind(nomes, literatura, matematica))

#install.packages('tidyr')
library(tidyr) 
#errado
df_tidy <- gather(df1, disciplina, nota, nomes)
df_tidy

#errado
df_tidy2 <- gather(df1, key=nomes, value=disciplinas)
df_tidy2

#certo
df_tidy3 <- gather(df1, key=disciplinas, value=notas, -nomes)
df_tidy3

#oposto do gather
df_tidy4 <- spread(df_tidy3, key=disciplinas, value=notas)
df_tidy4