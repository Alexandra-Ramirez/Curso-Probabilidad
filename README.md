##  Curso de teoria de probabilidades e inferencia estadística CM-274


###  Sitio web del curso

* http://c-lara.github.io/Curso-Probabilidad/


### Introducción

CM274 es un curso introductorio  a las ideas fundamentales y técnicas de la teoria de probabilidades e inferencia estadística.

Los prerequisitos para este curso son:

- Cálculo diferencial, integral y de varias variables.
- Álgebra lineal.
- Alguna familiariedad con un lenguaje de programación como Mathematica, Matlab, NumPy, C, R es asumida.


### Libros de referencia

- Probability, Markov Chains, Queues, and Simulation (Princeton University Press) William J. Stewart (2009).
- Introduction to Probability, Statistics, and Random Processes, Hossein Pishro-Nik Kappa Research, LLC (August 24, 2014). El sitio web que  acompaña al libro se encuentra [aquí](https://www.probabilitycourse.com/).



## Temario

* Probabilidad básica
  - Espacio muestral y eventos.
  - Función probabilidad.
  - Modelo clásico sobre espacios finitos.
  - Modelo clásico sobre espacios continuos.
  
* Teoria del conteo para probabilidades

  - Principio del conteo.
  - Permutaciones.
  - Permutaciones con reemplazo.
  - Permutaciones sin reemplazo.
  - Combinaciones sin reemplazo.
  - Combinaciones con reemplazo.
  - Ensayos de Bernoulli. 

* Conceptos fundamentales de probabilidad

  - Probabilidad condicional.
  - Eventos independientes.
  - Ley de la probabilidad total.
  - Regla de Bayes.
  

  
* Variables aleatorias y funciones de distribución

  - Variables aleatorias discretas y continuas.
  - PMF de una variable aleatoria discreta.
  - Función de distribución acumulativa.
  - Función densidad de probabilidad para una variable aleatoria continua.
  - Funciones de una variable aleatoria.
  - Variables aleatorias condicionadas.
  
* Distribuciones conjuntas y condicionales

  - Distribuciones conjuntas.
  - Funciones de distribución acumulativas conjuntas.
  - Funciones de masa de probabilidad conjunta.
  - Función densidad de probabilidad conjunta.
  - Distribuciones condicionales conjuntas.
  - Convolución y la suma de variables aleatorias.
 
* Esperanza de variables aleatorias
 
  - Definiciones.
  - Esperanza de funciones y variables aleatorias conjuntas.
  - Funciones generadoras de probabilidad para variables aleatorias discretas.
  - Funciones generadora de momentos.

* Cotas y teoremas de Límites
 
  - Desigualdad de Markov.
  - Desigualdad de Chebychev.
  - Cotas de Chernoff.
  - Tipos de convergencia.
  - Ley de los grandes números.
  - Teorema del límite central.
  
* Algunos tópicos de probabilidades

  - Caminos aleatorios.
  - Procesos de ramificación.
  - Ua breve introducción a la simulación.
  
## Software

La práctica de la estadística moderna es computacionalmente intensiva, pero para  este curso no es especialmente así, pero se tendrá que utilizar computadoras para hacer algunas  asignaciones.

En este curso se utilizará el lenguaje de programación  R (la alternativa de código abierto al lenguaje  S de AT&T). Tal vez este [video](https://www.youtube.com/watch?v=Dx4IFguczgI) que te muestre las ventajas y desventajas del lenguaje, te animen a aprenderlo.

El curso complementario de este curso acerca de R, se encuentra [aquí](http://c-lara.github.io/Curso-R/).

### R y Rstudio

[R](https://www.cran.r-project.org/) y [RStudio](https://www.rstudio.com/) . RStudio es un IDE para R. Es software libre con licencia GPLv3 y se puede ejecutar sobre distintas plataformas  o incluso desde la web usando [RStudio Server](https://support.rstudio.com/hc/en-us/articles/200552306-Getting-Started).


```bash
c-lara@Lara:~$ wget https://download1.rstudio.org/rstudio-0.99.893-amd64.deb
c-lara@Lara:~$sudo dpkg -i *.deb
c-lara@Lara:~$rm *.deb
``` 
- [Programming Part 1 (Writing code in RStudio)](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/).
- Using R and Rstudio for Data Management, Statistical and Graphics, Nicholas J. Horton and Ken Kleinman, CRC Press, 2015.

### Metropolis 

Metropolis es una plantilla de Beamer, que involucra los siguientes pasos de instalación:

* Descargar el código con `git clone` del [repositorio de metropolis](https://github.com/matze/mtheme) o como un [archivo zip](https://github.com/matze/mtheme/archive/master.zip) de la última versión de desarrollo.

* Compile los archivos de estilo ejecutando `make sty` dentro del directorio descargado. 

* Mueva los archivos `*.sty` resultantes a la carpeta que contiene una presentación. Para usar Metropolis con muchas presentaciones, ejecuta  `make install` o mueva los archivos `*.sty` a una carpeta en una ruta TeX (puede requerir derechos `sudo`).

* Utiliza el tema de su presentación declarando `\usetheme {metropolis}` en el preámbulo de un documento Beamer.

* Más  información detallada sobre el uso de Metropolis  [aquí](mirrors.ctan.org/macros/latex/contrib/beamer-contrib/themes/metropolis/doc/metropolistheme.pdf).
