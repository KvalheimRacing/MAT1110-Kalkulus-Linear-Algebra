# Oppgave 3.7.3 a)
u=arange(-0.5,100,0.03,float)
v=arange(-0.5,0.5,0.03,float)
x,y=meshgrid(u,v,sparse=False,indexing='ij')
z=1.0/sqrt(x**2+y**2)
mesh(x,y,z)
title('Oppgave 3.7.3a')

# Oppgave 3.7.3 b)
u=arange(-0.5,0.5,0.03,float)
v=arange(-0.5,0.5,0.03,float)
x,y=meshgrid(u,v,sparse=False,indexing='ij')
z=x/(x**2+y**2)
figure(2)
mesh(x,y,z)
title('Oppgave 3.7.3b')

# Oppgave 3.7.3 c)
u=arange(-0.5,0.5,0.03,float)
v=arange(-0.5,0.5,0.03,float)
x,y=meshgrid(u,v,sparse=False,indexing='ij')
z=y/x
figure(3)
mesh(x,y,z);
title('Oppgave 3.7.3c')

# Oppgave 3.7.3 d)
u=arange(-1,1,0.05,float)
v=arange(-1,1,0.05,float)
figure(4)
x,y=meshgrid(u,v,sparse=False,indexing='ij')
z=x**2-4*y**2
mesh(x,y,z);
title('Oppgave 3.7.3d')

# Oppgave 3.7.3 e)
u=arange(-1,1,0.05,float)
v=arange(-1,1,0.05,float)
x,y=meshgrid(u,v,sparse=False,indexing='ij')
figure(5)
z=exp(x*y)
mesh(x,y,z)
title('Oppgave 3.7.3e')
