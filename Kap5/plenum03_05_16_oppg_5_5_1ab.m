% Oppgave 5.5: 1)a) og b)

% Iterasjon av funksjon F fra R^2 inn i R^2.

% Lage program for aa beregne folgen u_{n+1} = F(u_n).

% INPUT:
x_1 = 1;
y_1 = -1;

antall_iterasjoner = 100;

%%%%%%%%%%%%%%%%%%%%%%%%

% Lager vektorer til aa fylle opp med folgeverdier:
x = zeros(1, antall_iterasjoner + 1);
y = zeros(1, antall_iterasjoner + 1);

% Fyller inn starverdiene:
x(1) = x_1;
y(1) = y_1;

% Lokke for aa beregne folgen:

for i=1:antall_iterasjoner 
    x(i+1) = 0.5*sin(x(i)+y(i));
    y(i+1) = 0.5*cos(x(i)-y(i));
end

% Plotter folgen:
plot(x,y)

% Ser at folgen stabiliserer seg, dvs. ser ut til aa konvergere, mot punktet
% (0.3865, 0.4970) (sees tilnaermet fra figur og mer eksakt ved aa printe x
% og y).


