clear all

% Oppgave 3.1.17 c)

% Lager jevnt fordelte punkter mellom 0 og 6 med avstand 0.05:
t = 0:0.05:6;

% Plotter r_1 vha. parametrisering fra b)
plot(t, sin(t))

% Neste figur i samme plot
hold on

% Plotter r_2 vha. parametrisering i b). Husk: komponentvise 
% operasjoner.
plot(t + 1./sqrt(1 + cos(t).*cos(t)), sin(t) + cos(t)./sqrt(1+cos(t).*cos(t)))

% Legger på forklaring
legend('bakhjul', 'forhjul')

% Like akser
axis('equal')
