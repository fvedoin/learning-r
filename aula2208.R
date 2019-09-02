#EXERCICIO 01
#MyData <- read.csv(file="C:/Users/UFSM/Downloads/LD00.csv", header=TRUE, sep=",")
var <- read.csv(file="DimR00.csv", header=TRUE, na.strings=c("","NA"))

#pega a coluna 1
x <- var[,1]

#pega a coluna 2
y <- var[,2]

myfit <- lm(y ~ x)
plot(x, y, data=myfit, geom=c("point", "smooth"))

#cria categorias
factor(y)

#exercício 02
conta <- 0
val <- c()
myMat <- matrix(nrow=10, ncol=10)

for (i in 1:10) {
  for (j in 1:10) {
    if (i == j) {
      conta <- conta + 1
      myMat[i,j] <- conta
    } else {
      myMat[i,j] <- 0
    }
  }
}

for (i in 1:10) {
  for (j in 1:10) {
    if (myMat[i,j] != 0) {
      val <- c(val, myMat[i,j])
    }
  }
}