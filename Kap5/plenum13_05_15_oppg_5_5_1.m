% Oppgave 5.5: 1

% Iterasjon av en funksjon fra R^2 til R^2

number_iterations = 100; % Antall iterasjoner

start = [1,-1]; % Startpunkt

% Deler opp komponentvis
start_x = start(1);
start_y = start(2);

% Lager vektorer i hver komponent der vi skal lagre følgen.
u_x = [start_x];
u_y = [start_y];

% Lager en løkke som regner ut F komponentvis og itererer.
for i=1:number_iterations
    u_x(i+1) = 0.5*sin(u_x(i) + u_y(i));
    u_y(i+1) = 0.5*cos(u_x(i) - u_y(i));
end

% Plotter følgen: scatter gir punktplot så vi kan se utviklingen.

scatter(u_x,u_y)

% Fra plot: Følgen ser ut til å ende opp i ett punkt, ca (0.387, 0.497).


