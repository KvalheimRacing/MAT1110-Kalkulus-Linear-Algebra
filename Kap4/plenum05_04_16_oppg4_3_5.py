# Oppgave 4.3: 5)

from numpy import matrix # For matriser
from MAT1120lib import rref # For rref-kommando; fins ikke standard i python. For aa bruke denne modulen (laget av Oeyvind Ryan): Last ned MAT1120lib.py fra Undervisningsressurser paa kurssiden til MAT1110 og lagre fila i samme mappe som du jobber i (med navn MAT1120lib.py). Naar du har gjort dette kan du importere fra modulen som vanlig (dvs som vist her).

# Skriver inn matrisen fra oppgaven:
A = matrix([[2,-1,1],
       	[-1,3,2],
	[3,-4,-1]])

# Radreduserer og printer ut resultatet:
print rref(A)
