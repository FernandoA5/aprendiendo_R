str(mtcars)
?mtcars
class(mtcars$vs)
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)
str(mtcars)

str(orangeec)
summary(orangeec)

summary(mtcars)

#CAMBIAR EL PESO DE MTCARS DE LIBRAS A PESOS
wt <- (mtcars$w*1000)/2
wt

mtcars.new <- transform(mtcars,wt=(wt*1000)/2)
mtcars.new


summary(mtcars.new)
#VECTORES
tiempo_platzi <- c(25, 5, 10, 15, 10)
tiempo_lecturas <- c(30, 10, 5, 10, 15)
tiempo_aprendizaje <- tiempo_platzi+tiempo_lecturas
tiempo_aprendizaje

dias_aprendizaje <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
dias_aprendizaje

dias_mas_20min <- c(FALSE, FALSE, FALSE, TRUE, TRUE)
dias_mas_20min

total_tiempo_platzi <- sum(tiempo_platzi)
total_tiempo_platzi

total_tiempo_lecturas <- sum(tiempo_lecturas)
total_tiempo_lecturas

total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas
total_tiempo_adicional

#MATRICES
tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_lecturas), nrow=2, byrow=TRUE)
dias <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
Tiempo <- c("tiempo platzi", "tiempo lecturas")


colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo

tiempo_matrix

colSums(tiempo_matrix)

#Ejercicios con matrices

final_matrix <- rbind(tiempo_matrix, c(10, 15, 30, 5, 0)) #rbind nos permite agregar otra fila a la matríz
final_matrix

colSums(final_matrix)

#RETO: agregar colúmna el sabado
Sabado <- c(5,10,15)
new_final_matrix <- cbind(final_matrix, Sabado)
new_final_matrix

#Ubicar elemento en una matriz
new_final_matrix[1,5]

#OPERADORES: Identificar datos que cumplan una condición dentro del dataset
mtcars[mtcars$cyl<6,] #en mtcars, en cylindros, todos los que son menor que 6. La coma es importante por algo
#Creo que la coma indica que busque en todos los registros
#Creo que este de orangeec no está funcionando bien
orangeec[orangeec$V2>=15000,]
orangeec
orangeec[orangeec$V6<= 2,]

neworangeec <- subset(orangeec, V10 > 80 & V13>=4.5)
neworangeec

neworangeec <- subset(orangeec, V10 > 80 & V13>=4.5, select = V6)
neworangeec

rename(orangeec, c("V6"="AporteEcNja"))

#FACTORES LISTAS Y DATASET
Nivel_Curso <- c("Básico", "Intermedio", "Avanzado")
Nivel_Curso

#Ver un vistaso del dataset
head(mtcars)#head por defecto devuelve 6 valores | con: head(mtcars, n=3) cambiamos el número
head(orangeec)
#ver en qué terminal el dataset
tail(mtcars)
tail(orangeec)

glimpse(orangeec)

my_vector <- 1:8 #Genera un vector con números del 1 al 8
my_matrix <- matrix(1:9, ncol=3) #Genera una matríz con números de 1 a 9 y 3 colúmnas
#Genera un dataframe con los elementos de mtcars del 1 al 4 con todas sus variables
my_dataframe <- mtcars[1:4,] 
#Genera una lista que contiene el vector, la matriz y el dataframe
my_lista <- list(my_vector, my_matrix, my_dataframe)
my_lista

#EDA: Exploratory Data Análysis





