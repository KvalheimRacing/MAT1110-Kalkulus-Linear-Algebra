% Oppgave 11.4
x=0.01:0.01:1;
y=0.01:0.01:1;
[x,y]=meshgrid(x,y);
f=@(x,y)x.^2.*y-y.^2;
mesh(x,y,f(x,y));
