# Fatores
getwd()
setwd("C:/DSA/FCD/BigDataRAzure")

vect1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
vect1
fact_vec1 <- factor(vect1)
fact_vec1
class(vect1)
class(fact_vec1)

# variáveis categóricas nominais
# Não existe uma ordem implícita
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

# Variáveis categóricas ordinais
# Possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, order= TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

# Sumarizar os dados fornece uma visão geral sobre o conteúdo das variáveis
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)

# Mais exemplos
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data, (labels = c("I", "II", "III")))
rdata

# Fatores não ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transformando os dados.
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

# fatores ordenados
o.set1 <- factor(set1,
                 levels = c("CA", "BA", "AA", "CC", ""),
                 ordered = TRUE)
o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

# Fatores e Dataframes
getwd()
setwd("C:/Dev/DSA/FCD/BigDataRAzure")
df <- read.csv2("etnias.csv", sep = ',')
df

# variáveis do tipo fator
str(df)
View(df)
df$Sexo <- factor(df$Sexo, labels = c("F", "M"))
df$Etnia <- factor(df$Etnia, labels = c("Branco", "Negro", "Pardo"))
str(df)
View(df)



# Níveis dos fatores
levels(df$Etnia)
summary(df$Etnia)


# Plot
plot(df$Idade~df$Etnia, xlab ='Etnia', ylab = 'Idade', main = 'Idade por Etinia')

# Regressão
summary(lm(Idade~Etnia, data = df))

# Convertendo uma coluna em variável categórica. isso criará um fator ordenado
df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)
