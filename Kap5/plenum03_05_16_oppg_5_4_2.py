import matplotlib.pyplot as plt
import numpy as np

# Oppgave 5.4: 2)

# To dyreslag i samme omraade: x_n og y_n av hvert slag i aar n.

# Bestandsutvikling? Plot for x_1=20, y_1=2000. Likevektspunkt?

#INPUT: 
final_time = 100 # Antall aar man vil se utviklingen for
x_1 = 20 # Antall dyr ved start.
y_1 = 2000

##################################################

# Lager vektorer med bare nuller til aa fylle opp med utviklingen av
# dyrebestandene:
x = np.zeros(final_time+1) 
y = np.zeros(final_time+1)

# Legger inn startbetingelse i vektorene. Husk: Python teller fra 0, ikke 1 som Matlab.
x[0] = x_1
y[0] = y_1

# Loekke for aa finne utvikling; bruker modell i oppgavetekst:
for i in xrange(0,final_time): #xrange funker som range i loekker, men gaar fortere.
    x[i+1] = 0.9*x[i] + 0.01*y[i] - 10
    y[i+1] = -1.01*x[i] + y[i] + 300

# Lager tidsvektor til aa plotte mot:
time = range(0,final_time+1)

# Plotter:
plt.plot(time, x)
plt.hold('on') # Begge grafer i samme plot
plt.plot(time, y, 'r')

# Viser fram plottet:
plt.show()

# Likevektspunkt: Ved aa zoome inn paa plot der grafene er stabilisert til
# rette linjer, ser vi at antall x-dyr har likevekt ca. 297 og antall y-dyr
# har likevekt ca. 3970.
