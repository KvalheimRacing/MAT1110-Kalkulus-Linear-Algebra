% Oppgave 6.1.2 
% a)
% Integraler kan regnes ut på flere måter i Matlab.
% De fire eksemplene nedenfor returnerer alle samme svar
dblquad( @(x,y)x.*y ,1,2,2,4) % Ved hjelp av anonym funksjon
dblquad('x.*y',1,2,2,4)       % Samme som over, men enklere syntaks.
f=inline('x.*y');
dblquad(f,1,2,2,4)            % Ved hjelp av linjefunksjon

% Symbolsk kan vi regne ut integralet slik
syms x y
uttrykk1=int('x*y','x',1,2)
uttrykk2=int(uttrykk1,'y',2,4)
eval(uttrykk2)

% b)
dblquad(@(x,y)x+sin(y),0,1,0,pi)

% c)
dblquad(@(x,y)x.^2.*exp(y),-1,1,0,1)

% d)
dblquad(@(x,y)x.*cos(x.*y),1,2,pi,2*pi)

% e)
dblquad(@(x,y)x.*y.*exp((x.^2).*y),0,2,1,2)

% f)
dblquad(@(x,y)log(x.*y),1,e,1,e)

% g)
dblquad(@(x,y)1./(1+(x.^2).*y),1,sqrt(3),0,1)
