#Comentarios
variableNumerica1 <- 4
variableNumerica2 <- 7

resultadoNumerico <- variableNumerica1 + variableNumerica2
class(resultadoNumerico)
resultadoNumerico

variableCaracteres <- "Esto es una variable de tipo String"
class(variableCaracteres)

variableBinaria <- (3 < 4)
class(variableBinaria)

variableVectoresCaracteres <- c("Los", "vectores", "almacenan", "variables", "de un", "solo tipo")
variableVectoresCaracteres

variableVectoresNumericas <- c(1, 3, 5, 8, 13, 48)
variableVectoresNumericas
variableVectoresNumericas + 5

variableVectoresNumericas2 <- c(10, 20, 30, 40, 50, 60)
variableVectoresNumericas - variableVectoresNumericas2

length(variableVectoresNumericas)
mean(variableVectoresNumericas2)

variableVectoresCaracteres[1]
variableVectoresCaracteres[c(1,3)]

filtro <- variableVectoresNumericas2 < 45
filtro

variableVectoresNumericas2[filtro]
variableVectoresCaracteres[filtro]

#Para graficar en R se necesitan crear matrices
vectorUno <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
vectorDos <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
vectoTres <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

matrices <- matrix(
  c(vectorUno, vectorDos, vectoTres),
  nrow = 9,
  ncol = 3)

colnames(matrices) <- c('Vector Uno', 'Vector Dos', 'VectorTres')
rownames(matrices) <- c('Fila 1', 'Fila 2', 'Fila 3', 'Fila 4', 'Fila 5', 'Fila 6', 'Fila 7', 'Fila 8', 'Fila 9')

matrices

#matrices + 5
#matrices + matrices
#matrices * matrices

matrices[1, 1]
matrices['Fila 1', 'Vector Uno']
matrices[c(3, 4), c(2, 3)]

#Seleccion de fila
matrices[3,]
matrices['Fila 9',]

#Selecci�n de columna
matrices[, 1]
matrices[, "Vector Dos"]

############################
# Gr�ficas en R
tallas <- c('m', 'g', 'S', 'S','m', 'M')
fator_tallas <- factor(tallas)

#recodificado_tallas <- factor(tallas,
#                              levels = c("g", "m", "M", "S"),
#                              labels = c("G", "M", "M", "S"))

recodificado_tallas <- factor(tallas,
                              ordered = TRUE,
                              levels = c("S", "m", "M", "g"),
                              labels = c("S", "M", "M", "G"))
recodificado_tallas
plot(recodificado_tallas)