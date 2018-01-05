from math import * # For matte
import numpy as np # For matriser

#NB: Her er ikke Python-delen av FVLA-boka oppdatert. Ligger inne i Python-ressurser som appendix til INF1100-boka:

import matplotlib.pyplot as plt # For plotting
from mpl_toolkits.mplot3d import Axes3D # For plotting

t = np.linspace(0,2*pi,100);

# Kurve 1:
x1 = t;
y1 = t**2; # OBS: Komponentvise operasjoner
z1 = np.sin(t); # Bruker numpy sin sinus siden jeg vil operere komponentvis


fig = plt.figure() # Lager tom figur for plotting
ax = fig.gca(projection='3d') # Get current axis fra figuren, hvis ikke er laget akser alt, lag egne akser. Hva slags akser? 3D pga projection='3D'

#Plotter
ax.plot(x1,y1,z1, label = 'r1')



# Kurve 2:

x2 = np.sin(t)**2; # OBS: Komponentvise operasjoner
y2 = np.cos(t)**2;
z2 = np.exp(-t);

# Plotter
ax.plot(x2,y2,z2,label='r2') # Akseobjektene har plottemetodene, sier ifra at vil bruke disse til plotting via ax.

ax.legend() # Vis legend til det som er plotta med ax.plot og med de labels som er gitt.

# Viser fram plot
plt.show()


# Modern family referanse (tenk Phil):
# The plot gives a figure if you ask ask ask,
# Axes is a different task, task, task
