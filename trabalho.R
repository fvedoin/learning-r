var <- read.csv(file="vendas_lucro.csv", header=TRUE, sep=",")

z_score_vendas <- (var$Vendas-mean(var$Vendas))/sd(var$Vendas)
z_score_lucro <- ((var$Lucro-mean(var$Lucro))/sd(var$Lucro))

new_var <- data.frame(var, z_score_vendas, z_score_lucro)

min_max_vendas <- (var$Vendas-min(var$Vendas))/(max(var$Vendas)-min(var$Vendas))
min_max_lucro <- (var$Lucro-min(var$Lucro))/(max(var$Lucro)-min(var$Lucro))

new_var <- data.frame(new_var, min_max_vendas, min_max_lucro)

median_vendas <- summary(var$Vendas)[3]
iqr_vendas <- IQR(var$Vendas)
qu_normalized_vendas <- (var$Vendas-median_vendas)/iqr_vendas

median_lucro <- summary(var$Lucro)[3]
iqr_lucro <- IQR(var$Lucro)
qu_normalized_lucro <- (var$Lucro-median_lucro)/iqr_lucro

new_var <- data.frame(new_var, qu_normalized_vendas, qu_normalized_lucro)
