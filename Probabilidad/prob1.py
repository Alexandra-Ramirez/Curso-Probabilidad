# Definicion de probabilidad (Codigo basado en el Peter Norvig)

from fraction import Fraction 

def P(evento, espacio):
    """ La probabilidad de un evento, dado un espacio muestral
        de salidas igualmente probables"""

    # Los casos favorables son la interseccion de 
    #evento y espacio(evento & espacio)

    return Fraction(len(evento & espacio), len(espacio))
