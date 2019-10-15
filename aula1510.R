regrOrigem <- function(angulo){
  #install.packages("psych")
  library(psych)
  galton <- data.frame(galton)
  y <- galton$parent - mean(galton$parent)
  x <- galton$child - mean(galton$child)
  dadosFr <- as.data.frame(table(x, y))
  names(dadosFr) <- c("filhos","pais","frequencia")

  plot(as.vector(x), as.vector(y), cex = 0.1 * dadosFr$frequencia)
  abline(0, angulo)
  erroMQ <- mean(y-angulo*x)^2
  title(erroMQ)
}

install.packages("plotly")
install.packages("manipulate")
library(plotly)
library(manipulate)

manipulate(regrOrigem(angulo = angulo), angulo=slider(-6, 6, step = 0.5))
