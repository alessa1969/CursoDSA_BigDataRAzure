# Funções
getwd()

# Help
? sample
args(sample)
args(mean)
args(sd)

# Funções Buit-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
z <- c(7, 4, 8, 9, 5, 12, 3)
z
sort(z)
append(c(1:5), 6)


vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec1
vec2 <- rev(vec1)
vec2

# Funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))

# Criando funções
myfunc <- function(x){x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b){
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function(){
  num <- sample(1:6, size = 1) # local
  num
}
jogando_dados()


# Escopo
print(num)
num <- c(1:6)
num #Global

# Funções sem número definido de argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...){
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)

myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)

#Comparação de eficiência entre função vetorizada e função vetorizada no R

x <- 1:10000000

# Funão que calcula a raiz quadrada de cada elemento de um vetor de números
meu_sqr <- function(numeros){
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)){
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}

system.time(x2a <- meu_sqr(x))
system.time(x2b <- sqrt(x))

# Sua máquina pode apresentr resultados diferentes por conta da precisão do calculo
identical(x2a, x2b)
