% Oppgave 6.3.2 a)
dblquad(@(r,theta)(r.^4).*cos(theta).*(sin(theta).^2),0,3,0,pi/2)

% Oppgave 6.3.2 b)
dblquad(@(r,theta)(r.^3),0,5,0,pi/4)

% Oppgave 6.3.2 c)
dblquad(@(r,theta)r.*exp(r.^2),1,4,0,2*pi)

% Oppgave 6.3.2 d)
dblquad(@(r,theta)r.^3.*sin(theta).*cos(theta),0,1,0,pi/4)

% Oppgave 6.3.2 e) 
dblquad(@(x,y)(x.^2-y.^2).*(x.^2+y.^2<=1) ...
            .*(y >= sqrt(3).*x).*(y <= sqrt(3).*x./3) ,-1,0,-1,0)

% Oppgave 6.3.2 f)
dblquad(@(r,theta)r.*sqrt(2-(r.*cos(theta)).^2-(r.*sin(theta)).^2)...
            ,0,1,0,pi/2)

% Oppgave 6.3.2 g)
dblquad(@(x,y)(x.^2+y.^2).^(3/2) .* ((x-1).^2 +y.^2 <= 1) ,0,2,-1,1)
