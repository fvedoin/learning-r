x <- data.frame("var1"=sample(1:5), "var2"=sample(6:10),"var3"=sample(11:15))

#buscas no data.frame
x[1:3,"var2"]
x[(x$var1 <= 2 & x$var3 >10),]
x[(x$var1 <= 3 | x$var3 >14),]
x[(is.na(x$var2)),]


#exercício
install.packages("plyr")
var <- read.csv(file="fakeMarvelData.csv", header=TRUE, sep=",")

data.frame(var$Nome, var$Afiliação, var$QI)

var[(is.na(var$QI)),]
qi <- var[(var$QI > 120 & !is.na(var$QI)),]
qi[order(qi$QI),]

