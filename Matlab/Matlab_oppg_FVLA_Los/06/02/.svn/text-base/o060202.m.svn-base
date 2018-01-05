% Oppgave 6.2.2 a)
dblquad(@(x,y)(x.^2).*y .*(y<=x) ,0,2,0,2)

% Symbolsk utregning:
syms x y
uttrykk1=int('x^2*y','y',0,x);
uttrykk2=int(uttrykk1,'x',0,2);
eval(uttrykk2)

% Oppgave 6.2.2 b)
dblquad(@(x,y)(x+2*x.*y).*(x<=y).*(y<=(2*x+1)),0,3,0,7)

% Oppgave 6.2.2 c)
dblquad(@(x,y)y.*(y<=x).*(x<=y.^2),1,4,1,2)

% Oppgave 6.2.2 d)
dblquad(@(x,y)(x.*cos(y)).*(x<=sin(y)),0,1,0,pi/2)

% Oppgave 6.2.2 e)
dblquad(@(x,y)exp(x.^2).*(y<=x),0,1,0,1)

% Oppgave 6.2.2 f)
dblquad(@(x,y)(x.^2).*y.*(y<=sqrt(x)).*(x.^2<=y),0,1,0,1)

% Oppgave 6.2.2 g)
dblquad(@(x,y)x.*cos(x+y).*(y<=x),0,pi,0,pi)

% Oppgave 6.2.2 h)
dblquad(@(x,y)(y<=sin(x))./sqrt(1-y.^2),0,pi/2,0,1)
pi^2/8

% Oppgave 6.2.2 i)
dblquad(@(x,y)x.*(((x-1)./(exp(1)-1))<=y).*(y<=log(x)),1,exp(1),0,1) 


