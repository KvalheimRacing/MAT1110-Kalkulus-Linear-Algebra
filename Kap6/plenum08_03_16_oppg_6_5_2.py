# Oppgave 6.5.2

# Skisser en parametrisert kurve (t sin(t), 2*pi t - t^2), t er i [0,2*pi].
# Finne orientering for aa se om Greens teorem kan brukes.

import matplotlib.pyplot as plt # For plotting
from numpy import * # For matriser

T = 2*pi; # Sluttid, varier denne for aa se orientering: pi/2, pi, 3*pi/2 f.eks.

# Lager 100 jevnt fordelte tidspunkter mellom 0 og sluttiden T.
t = linspace(0,T,100);

x = t*sin(t);  
y = 2*pi*t - t**2; #  OBS: Komponentvise operasjoner!

plt.plot(x,y) # Plotter
plt.show()

# Ser at kurven er orientert mot klokka, dvs. positivt orientert. Den er i
# tillegg enkel, lukket og stykkvis glatt. Dvs: Greens teorem kan brukes!
