# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Dev/DSA/FCD/BigDataRAzure")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
vetorExerc1 <- c(1:30)
length(vetorExerc1)
class(vetorExerc1)
mode(vetorExerc1)
typeof(vetorExerc1)


# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz_Exerc2 <- matrix(c(1:16), nr = 4, ncol = 4)
matriz_Exerc2

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
listaExerc3 = list(vetorExerc1, matriz_Exerc2)
listaExerc3
length(listaExerc3)


# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

?read.table
read.table(file = "effort.dat.txt", header = TRUE,)
read.table(file = "http://data.princeton.edu/wws509/datasets/effort.dat", header = TRUE)
dataframeExer4 <- data.frame(read.table(file = "http://data.princeton.edu/wws509/datasets/effort.dat", header = TRUE))
class(dataframeExer4)
dataframeExer4


# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")

names(dataframeExer4) <- c("config", "esfc", "chang")
dataframeExer4


# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset

iris
class(iris)
View(iris)
head(iris)
dim(iris) # 150 linhas e 5 colunas
str(iris)
summary(iris)


# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
?hist
par(mgp=c(1,1,0))

#barplot(iris$Sepal.Length, iris$Sepal.Width)
plot(iris$Sepal.Length, iris$Sepal.Width)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
dataframeExerc8 <-subset(iris, iris$Sepal.Length > 7)
dataframeExerc8

# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
# install.packages("dplyr") > Já tenho instalado
dim(iris)

dataFrameExerc9_15firstLine <- subset(iris, row.names(iris) == 1:15)
dataFrameExerc9_15firstLine

dataFrameExerc9_comSlice = slice(iris, ... = 1:15)
dataFrameExerc9_comSlice

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
dataFrameExerc9_15firstLine$Sepal.Length > 6
?RSiteSearch
?filter
filter(dataFrameExerc9_comSlice, Sepal.Length > 7)
filter(dataFrameExerc9_comSlice, dataFrameExerc9_comSlice$Sepal.Length > 6)
