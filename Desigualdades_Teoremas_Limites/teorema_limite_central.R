# El teorema del Limite Central en R, usando animation

library(animation)

# un número positivo para configurar el intervalo de tiempo de la animación
ani.options(interval = 0.5)
par(mar = c(3, 3, 1, 0.5), mgp = c(1.5, 0.5, 0), tcl = -0.3)
lambda = 4
# Muestra aleatoria para la distribucion de Poisson con parametro lambda
f <- function(n) rpois(n, lambda) 

# Funcion del paquete animation, incluyendo los P-valores
# del test de normalidad de Shapiro

clt.ani(FUN = f, mean = lambda, sd = lambda)