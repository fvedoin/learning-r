#EXERCICIO 01
#MyData <- read.csv(file="C:/Users/UFSM/Downloads/LD00.csv", header=TRUE, sep=",")
y <- read.csv(file="/ncc/hp39/Downloads/DimR00.csv", header=TRUE, na.strings=c("","NA"))

x <- 1:100

#pegar coluna 2
y<- y[,2]

myfit <- lm(x ~ y)
plot(x,y, data=myfit, geom=c("point","smooth"))

newY = as.integer(y)

plot(x,newY, data=myfit, geom=c("point","smooth"))
#lines(x, y, type = "l")

#EXERCICIO 02
conta <- 0
myMat <- matrix(nrow = 10, ncol = 10)
for (i in 1:10) {
  for (j in 1:10) {
    if(i==j){
      conta<-conta+1
      myMat[i,j] <- conta
    }else{
      myMat[i,j] <- 0
    }
  }
}

dim(myMat)

for (i in 1:10) {
  for (j in 1:10) {
    if(myMat[i,j] != 0){
      arr <- c(arr, myMat[i,j])
    }
  }
}
