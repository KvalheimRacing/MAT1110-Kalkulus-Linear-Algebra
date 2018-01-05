# Oppgave 3.8.2 ac)
r=arange(-5,5,0.5,float)
s=arange(-5,5,0.5,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij');
u=-y/(x**2 + y**2)
v=x/(x**2 + y**2)
quiver(x,y,u,v)
title('Oppgave 3.8.2ac')
# streamline does not work properly in Python at the moment
# hold on
# streamline(x,y,u,v,1,0); 
