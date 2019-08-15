#manipulando diretórios
file.exists('Documentos')
dir.create('Documentos')
file.exists('Documentos')

#downloads
#também é possível baixar sem o método curl
download.file('https://www.aprenderexcel.com.br//imagens/post/385/2901-1.jpg', destfile = "doris", method = "curl")
#download.file('http://www.inf.ufsm.br/~joaquim/DM/ds/usr_data.csv', destfile = "arquivo", method = "curl")
list.files("./")

#populando valores não disponíveis
x <- c(2,4,3,4, NA, 5)
#verifica as posições preenchidas
complete.cases(x)
#completa as posições não disponíveis com a média, ignorando os NA
x[!complete.cases(x)] = mean(x, na.rm = TRUE)
#menor valor do vetor
min(x, na.rm = TRUE)
#maior valor do vetor
max(x, na.rm = TRUE)
#retorna as informações do vetor. também é indexada: summary(x)[i]
summary(x)

x <- c(8.9, 19.2, 33.8, 34.9, 43.0, 49.5, 49.1, 77.8, 90.4, 81.1, 112.7, 108.1, 122.2, 143.3, 125.2, 157.3, 169.2, NA, 200.5, 203.0)
