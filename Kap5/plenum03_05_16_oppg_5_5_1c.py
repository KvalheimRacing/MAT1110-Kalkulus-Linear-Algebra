import matplotlib.pyplot as plt
import numpy as np
from math import sin, cos

# Oppgave 5.5: 1)c)

# Iterasjon av funksjon F fra R^2 inn i R^2.

# Lage program for aa beregne foelgen u_{n+1} = F(u_n). Skal kjoere program 6
# ganger med tilfeldig trukket input mellom -2.5 og 2.5.

# INPUT:

antall_subplot = 6
antall_iterasjoner = 10
nedre_grense_input = -2.5
ovre_grense_input =2.5

############################

# Lager figur til aa plotte i etterpaa:
fig, axs = plt.subplots(2,3, sharex=True, sharey=True) # sharex og sharey gjoer at aksene blir like. Gjoer det lettere aa sammenligne plottene.

axs = axs.ravel() # Gjoer om 2*3 til en "flat" array med 6 elementer. Gjoer loop'ing enklere.

for j in xrange(0,antall_subplot):

	x_1 = (ovre_grense_input -nedre_grense_input)*np.random.rand(1) + nedre_grense_input 
	y_1 = (ovre_grense_input -nedre_grense_input)*np.random.rand(1) + nedre_grense_input 

	#################################

	# Lager vektorer til aa fylle opp med foelgeverdier:
	x = np.zeros(antall_iterasjoner + 1)
	y = np.zeros(antall_iterasjoner + 1)

	# Fyller inn starverdiene:
	x[0] = x_1
	y[0] = y_1

	# Loekke for aa beregne foelgen:
	for i in xrange(0,antall_iterasjoner): 
		x[i+1] = 0.5*sin(x[i]+y[i])
        	y[i+1] = 0.5*cos(x[i]-y[i])
    
	# Plotter foelgen. Jobber hele tiden i j'te plot (derfor axs[j].diverse):
	axs[j].plot(x,y)
	# Plotter ogsaa startpunktet til foelgen for aa lettere kunne se
	# sluttpunktet:
	axs[j].hold('on') # Vil plotte dette i samme plot.
	axs[j].plot(x_1,y_1,'*') # Plotter startpunktet.
	

######################################

plt.show() # Viser fram hele plottet.

# Fra plottene: Alle foelgene ser ut til aa konvergere mot samme punkt, ca.
# (0.385, 0.495). Dermed ser det ut til at vi har konvergens mot dette punktet
# for startpunkter mellom -2.5 og 2.5. Merk at dette ogsaa stemmer overens
# med resultatene fra b). 

