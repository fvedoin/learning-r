arq <- read.csv(file="Insetos00.csv", header=TRUE, sep=",")
data <- subset(arq, select = -c(Inseto.ID, Classe.do.inseto))

plot(data)
abline(31, -6)

####################
abdomen <- c(3.2, 7.2)
antena <- c(4.2, 4.1)

plot(y=abdomen, x=antena)
abline(5.3,0)

