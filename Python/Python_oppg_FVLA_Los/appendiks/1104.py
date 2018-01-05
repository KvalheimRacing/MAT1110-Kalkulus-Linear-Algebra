# Oppgave 11.4
f=lambda x,y: (x**2)*y - y**2
r=linspace(-5,5,200)
s=linspace(-5,5,200)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=f(x,y)
mesh(x,y,z)



