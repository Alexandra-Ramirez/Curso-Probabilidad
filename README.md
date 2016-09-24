# Curso de Probabilidad y Estadística 

## Prerrequisitos

1. Álgebra Lineal
   * Linear algebra done right, S. Axler  Undergraduate Texts in Mathematics, Springer 2015.
2. Cálculo multivariado
   * Multivariate Calculus, Denis Aroux OCW MIT 2007.

## Temas

1. Propiedades de la probabilidad.
2. Independencia, probabilidad condicional, ley de Bayes.
3. Variables aleatorias, distribuciones, densidades y esperanza.
4. Distribuciones conjuntas, funciones marginales, covarianza, correlación.
5. La ley de los grandes números.
6. Teorema del límite central.
7. Importantes distribuciones
  * Bernoulli, Binomial
  * Uniforme
  * Normal(Gausiana)
  * Exponencial, Poisson
  * Gamma, Beta, Chi-cuadrado
8.  Introducción  a los Procesos estocásticos.
  * Caminos aleatorios
  * Cadenas de Markov
  * Martingalas
9. Introducción a la Estadística
10. Inferencia estadística I
  * Estimación de paramétros
  * Intervalos de confianza
  * Desviación estándar no conocida
  * Prueba  de hipótesis
  * Inferencia acerca de la varianza
11. Inferencia estadística II
  *  Test chi-cuadrado
  *  Estadística no parámetrica
  *  Bootstrap
  *  Inferencia Bayesiana
12. Regresión 
  * Estimación de mínimos cuadrados
  * Analizando la varianza, predicción.
  * Boostrap
13. Regresión multivariada
  * Introducción y ejemplos
  * Estimación de mínimos cuadrados y análisis matricial
  * Análisis de varianza, pruebas y predicción.

## Libros y artículos

- Probability and Statistics for Computer Scientists (CRC Press) Michael Baron (2014).
- Probability, Markov Chains, Queues, and Simulation (Princeton University Press) William J. Stewart (2009).
- Mathematical Statistics and Data Analysis (Duxbury Resource Center) John A. Rice (2006).
- Teaching Statistics: A Bag of Tricks, Andrew Gelman y Deborah Nolan,  Oxford University Press; 1 edition 2002.
- Weighing the Odds: A course in Probability and Statistics, David Williams, Cambridge University Press-2001.
- All of Statistics  A Concise Course in Statistical Inference Larry Wasserman (Springer Texts in Statistics) (2003).
- [Introduction to Probability ](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html).
- [Set Theory a primer](https://jeremykun.com/2011/07/09/set-theory-a-primer/).
- [Conditional probability a primer](https://jeremykun.com/2013/03/28/conditional-partitioned-probability-a-primer/).
- [Probability Theory a primer](https://jeremykun.com/2013/01/04/probability-theory-a-primer/).
- [Probabilistic bounds a primer](https://jeremykun.com/2013/04/15/probabilistic-bounds-a-primer/).
- [Notas de Teoria de la Probabilidad de Terence Tao](https://terrytao.wordpress.com/2015/09/29/275a-notes-0-foundations-of-probability-theory/).
- [Notas de Probabilidad y Estadística de KC. Border CALTECH](http://www.math.caltech.edu/%7E2015-16/2term/ma003/).
-  Algunos canales de YouTube para aprender Estadistica:
  * [Brandon Foltz](https://www.youtube.com/user/BCFoltz).
  * [jbstatistics](https://www.youtube.com/user/jbstatistics).
  * [Analytics University](https://www.youtube.com/channel/UC2XO4HDxzfMOZIV1l795g1Q).
  * [NPTEL HRD](https://www.youtube.com/user/nptelhrd).

## Knitr

Knitr es un paquete de R que permite integrar código R en archivos de distintos formatos.

```r
install.packages('knitr', dependencies = TRUE)
```
Se puede verificar que se ha instalado correctamente escribiendo

```r
library('knitr')
```
Knitr soporta gráficos y frameworks  [Knitrbootsrap](www.jimhester.com/knitrBoostrap) a crear boostrap para reportes en HTML via Rmarkdown. 

- Referencia: Dynamics Documents with R and Knitr, Yihui Xie, CRC Press, 2014.



## Otros temas de aplicación 

### Cadenas de Markov y simulación
* Probability, Markov Chains, Queues, and Simulation (Princeton University Press) William J. Stewart (2009).

### Introducción a la Inferencia Bayesiana.
* Bayes' Rule: A Tutorial Introduction to Bayesian Analysis, James V. Stone, Sebtel Press  2013.

### Introducción a los Procesos Estocásticos

* [Stochastic Processes in Python ](http://www.turingfinance.com/random-walks-down-wall-street-stochastic-processes-in-python/).
* Basic Stochastic Processes, Tomasz Zastawniak, Zdzislaw Brzezniak, Springer Undergraduate Mathematics Series, 2000.
* Basic Stochastic Processes, Pierre Devolder, Jacques Janssen, Raimondo Manca, Wiley, 2015.
* Introduction to Stochastic Processes - Lecture Notes, Gordan Žitković Department of Mathematics The University of Texas at Austin.

### Matemática actuarial (Introducción)

* Actuarial Models, The mathematics of Insurance, Second Edition, Vladimir I. Rotar, CRC Press, 2015.
* [What do actuaries do?](https://www.quora.com/What-do-actuaries-do).
* Computational Actuarial Science with R, Arthur Charpentier,  2014 Chapman and Hall/CRC .

### Estadística Computacional
* Computational Statistics, Geof H. Givens y Jennifer A. Hoeting, Second Editions, Wiley, 2013.


## Presentaciones

- Soluciones Númericos para las Cadenas de Markov, que involucre matrices estocásticas, métodos discretos , iterativos para distribuciones estacionarias, descomposición y métodos de agregación.
- Elemento básicos de la Teoria de Colas, eso incluye la notación de Kendall, representaciones gráficas de colas, las colas M/M/c, M/M,1.
- Integración estocastica, con respeto a un camino aleatorio ,  movimiento browniano, fórmula de Ito y simulación.
- Características globales de los procesos SURPLUS
- Modelos de seguros de vida
- Procesos de Poisson, que se tome en cuenta, procesos no homogeneos, ley de los evento raros o procesos de Poisson marcado.
- Funciones caracteristicas y sus aplicaciones, que incluya por ejemplo las fórmulas de inversión de Fourier e identidad de Parseval.
- Programación entera estocástica, que incluya LP-relaxation y el modelado.
