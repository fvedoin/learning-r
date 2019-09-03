y <- c(8.9, 19.2, 33.8, 34.9, 43.0, 49.5, 49.1, 77.8, 90.4, 81.1, 112.7, 108.1, 122.2, 143.3, 125.2, 157.3, 169.2, NA, 200.5, 203.0)
x <- 1:length(y)
myfit <- lm(x ~ y)
library("ggplot2")
qplot(x,y, data=myfit, geom=c("point","smooth"))

#EXERCICIO
#MyData <- read.csv(file="C:/Users/UFSM/Downloads/LD00.csv", header=TRUE, sep=",")
arq <- read.csv(file="LD00b.csv", header=TRUE, na.strings=c("","NA"))
dados <- arq['Precipitacao']
precipitacao <- dados[,'Precipitacao']

#a <- as.vector.factor(precipitacao)
b <- as.numeric(precipitacao)
b[!complete.cases(b)] = mean(b, na.rm = TRUE)

max <- max(b, na.rm = TRUE)
min <- min(b, na.rm = TRUE)
