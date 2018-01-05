import matplotlib.pyplot as plt
import numpy as np
from math import sin, cos

# Oppgave 5.5: 1)a) og b)

# Iterasjon av funksjon F fra R^2 inn i R^2.

# Lage program for aa beregne foelgen u_{n+1} = F(u_n).

# INPUT:
x_1 = 1
y_1 = -1

antall_iterasjoner = 10

##############################

# Lager vektorer til aa fylle opp med foelgeverdier:
x = np.zeros(antall_iterasjoner + 1)
y = np.zeros(antall_iterasjoner + 1)

# Fyller inn starverdiene:
x[0] = x_1;
y[0] = y_1;

# Loekke for aa beregne foelgen:

for i in xrange(0,antall_iterasjoner): 
    x[i+1] = 0.5*sin(x[i]+y[i]);
    y[i+1] = 0.5*cos(x[i]-y[i]);

# Plotter foelgen:
plt.plot(x,y)
plt.show() # Viser fram plottet.

# Ser at foelgen stabiliserer seg, dvs. ser ut til aa konvergere, mot punktet
# (0.3865, 0.4970) (sees tilnaermet fra figur og mer eksakt ved aa printe x
# og y).


