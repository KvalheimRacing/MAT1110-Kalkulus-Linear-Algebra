clear all
% Oppgave A5: 2

% Tegn to parametriserte kurver i 3 dimensjoner med MATLAB:

t = linspace(0,10*pi,100);

% Første kurve:
x1 = t;
y1 = t.^2; % OBS: Husk komponentvise operasjoner! 
z1 = sin(t);

plot3(x1,y1,z1)

hold on % Begge kurvene i samme plot.

% Andre kurve:
x2 = sin(t).^2; % OBS: Komponentvise operasjoner!
y2 = cos(t).^2;
z2 = exp(-t); 

plot3(x2,y2,z2)

legend('r1','r2') % Legger på legend for å se hvilken kurve som er r1 og r2
