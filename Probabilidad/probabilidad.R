# Codigo sobre probabilidad

library(sets)
library(ggplot2)

Omega  = set("a", "b", "c")
# mostramos un conjunto con todos los posibles
# eventos de un experimento  en un espacio muestral Omega
2^Omega

# Espacio muestral
Omega = c(1, 2, 3, 4)
# probabilidades de  4 eventos
p = c(1/2, 1/4, 1/8, 1/8)
# ellos suman 1
sum(p)

Omega = set(1, 2, 3)
# todos los posibles eventos
2^Omega

# tam de todos los posibles eventos 
sapply(2^Omega, length)

# probabilidad de todos los elementos bajo el modelo clasico
sapply(2^Omega, length)/length(Omega)


# Modelo clasico de probabilidad

Omega = set(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# histograma tam vs probabilidades
qplot(sapply(2^Omega, length), xlab = "tam de eventos", binwidth = 0.5, size = I(1/2))

# histograma tam vs probabilidades
qplot(sapply(2^Omega, length)/length(Omega), xlab = "probabilidad de eventos", binwidth = 0.05)



