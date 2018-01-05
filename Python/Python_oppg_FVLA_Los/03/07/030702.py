# Oppgave 3.7.2 a)
r=arange(-2,2,0.05,float)
s=arange(-2,2,0.05,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=2*x**2+y**2
mesh(x,y,z)
title('Oppgave 3.7.2a')

# Oppgave 3.7.2 b)
z=y**2-x
figure(2)
mesh(x,y,z)
title('Oppgave 3.7.2b')

# Oppgave 3.7.2 c)
r=arange(-4,4,0.01,float)
s=arange(-4,4,0.01,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=sin(x**2+y**2)
figure(3)
mesh(x,y,z)
title('Oppgave 3.7.2c')

# Oppgave 3.7.2 d)
r=arange(-5,5,0.05,float)
s=arange(-5,5,0.05,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=x**2 - 4*y**2
figure(4)
mesh(x,y,z)
title('Oppgave 3.7.2d')

# Oppgave 3.7.2 e)
r=arange(-2,2,0.05,float)
s=arange(-2,2,0.05,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
figure(5)
z=log(x*y)
mesh(x,y,z)
title('Oppgave 3.7.2e')

