# Oppgave 5.4: 6 b) og c)

# Input:

import matplotlib.pyplot as plt
import numpy as np

alpha = 0.05
beta = 0.02

# Startpriser for firmaene:
p_1 = 4
q_1 = 3

# Antall aar vi vil se utviklingen for:
years = 20

#############################

# Lager vektorer som lagrer prisene:

p = np.zeros(years+1)
q = np.zeros(years+1)

p[0]=p_1
q[0]=q_1

# Lager ei loekke som regner ut prisene for det antallet aar vi er
# interessert i:

for i in xrange(0,years):
    p[i+1]=1.1*(float(q[i])/(1+alpha*q[i])) # NB: Merk float for aa unngaa heltallsdivisjon! 
    q[i+1]=1.1*(float(p[i])/(1+beta*p[i]))

# NB 2: Velger aa gjoere float her istedenfor i input for aa unngaa heltallsdivisjon samme hva input faktisk er.

# Lager en tidsarray aa plotte mot:
time=range(0,years+1)

#Plotter prisutviklingen
plt.plot(time,p)
plt.hold('on')
plt.plot(time,q,'r')

# Viser fram plottet:
plt.show()

# Gjoer alle kjoeringene som oppgaven ber om: Se paa plottene og si hva som
# skjer. Generelt naar firmaenes etterspoersel er like, dvs. alpha=beta: Ser 
# sikksakk/hatteform. Dvs, det firmaet som har hoeyest
# pris et aar vil sette ned prisen neste aar, mens firmaet med lavest pris
# vil sette den opp. Det foerer til at de bytter paa aa vaere dyrest/billigst.
# Ettersom tiden gaar naermer prisene seg hverandre (ser ut til aa gaa mot en
# likevektstilstand), og prisen er lavere enn i begynnelsen. Bedre for
# konsumentene!

# Naar firmaenes etterspoersel ikke er like, beta < alpha (som i c)): 
# vil man ogsaa gaa mot en likevekt, men der Firma 2 har en hoeyere pris 
# enn Firma 1. De kan tillate seg dette pga lavere beta, dvs. generelt
# hoeyere etterspoersel.
