# Fatores e Dataframes - Compreendendo a Ordem dos Fatores
getwd()

# Níveis dos fatores

# criando vetores
vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c('Verde', 'Laranja', 'Azul', 'Laranja', 'Verde')

# Unindo os vetores em um dataframe
df <- data.frame(vec1, vec2, vec3)
df$vec3 <- factor(df$vec3, labels = c("Azul", "Laranja", "Verde"))

# Verificando que o R categorizou a última coluna como fator
str(df)

# Verificando os níveis do fator
levels(df$vec3)

# Criando uma outra coluna e atribuindo labels
df$cat1 <- factor(df$vec3, labels = c("cor1", "cor2", "cor3"))
df

# Internamente os fatores são registador como inteiros
str(df)

# Criando uma outra coluna e atribuindo Label
df
df$cat2 <- factor(df$vec2, labels = c("Divorciado", "Casado", "Solteiro"))
str(df$cat2)
levels(df$cat2)
