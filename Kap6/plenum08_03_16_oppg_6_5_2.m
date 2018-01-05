% Oppgave 6.5.2

% Skisser en parametrisert kurve (t sin(t), 2*pi t - t^2), t er i [0,2*pi].
% Finne orientering for å se om Greens teorem kan brukes.

T = 3*pi/2; % Sluttid. Varier denne for å se orientering: pi/2, pi, 3*pi/2 f.eks.

% Lager 100 jevnt fordelte tidspunkter mellom 0 og sluttiden T.
t = linspace(0,T,100);

x = t.*sin(t); % OBS: Komponentvise operasjoner! 
y = 2*pi.*t - t.* t;

plot(x,y) % Plotter
axis([-5 2 0 10]) % Låser aksene for enklere sammenligning. Velges vha prøving.

% Ser at kurven er orientert mot klokka, dvs. positivt orientert. Den er i
% tillegg enkel, lukket og stykkvis glatt. Dvs: Greens teorem kan brukes!