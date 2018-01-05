% Oppgave 6.7.3 a)
dblquad(@(x,y)x.*y.*(x+2*y>=-1).*(x+2*y<=3).*(x-y>=1).*(x-y<=4),...
        1/3,11/3,-5/3,2/3)

% Oppgave 6.7.3 b)
dblquad(@(x,y)(x.^2 - y.^2).*exp(x+y).*(-x<=y).*(x<=y).*(y<=x+2)...
        .*(y<=-x+2),-1,1,0,2)

% Oppgave 6.7.3 c)
dblquad(@(x,y)(y.^2 - y.*x).*(x<=y).*((1./x)<=y).*(y<=2*x).*(y<=(2./x)),...
        (1/sqrt(2)),sqrt(2),1,2)


