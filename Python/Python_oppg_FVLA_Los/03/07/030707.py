# Oppgave 3.7.7
r=arange(-5,5,0.1,float)
s=arange(-5,5,0.1,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=((x**3)*y-x*(y**3))/((x**2 + y**2)**2)
mesh(x,y,z)
title('Oppgave 3.7.7')
figure(2)
contour(x,y,z)
title('Oppgave 3.7.7')

