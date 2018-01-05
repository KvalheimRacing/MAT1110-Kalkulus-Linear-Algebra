clear all 

% Oppgave 3.1.17 c)

% Skal tegne kurvene r_1 og r_2 i samme koordinatsystem.

% Lager jevnt fordelte punkter mellom 0 og 6 med avstand 0.05 (tar tallet 6 fra plottet i d))
t = 0:0.05:6;

% Plotter r_1 vha. parametrisering fra b)
plot(t, sin(t))

% Neste figur i samme plot
hold on

% Plotter r_2 vha parametrisering fra b): Husk komponentvise operasjoner.
plot(t + 1./sqrt(1 + cos(t).*cos(t)), sin(t) + cos(t)./sqrt(1+cos(t).*cos(t)))

% Legger på forklaring
legend('bakhjul', 'forhjul')

% Sørger for at aksene er like
axis('equal')

% Ser at plottet er lik

