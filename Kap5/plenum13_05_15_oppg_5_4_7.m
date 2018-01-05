% Oppgave 5.4.7

% Input:
number_iterations = 29;
start = sqrt(2);

% Lager vektor til å lagre funksjonsverdier. Husker på at den første 
% komponenten her bare er startverdien:
x=[start];

for i=1:number_iterations
    x(i+1)=(x(i))^2 + x(i) -2;
end

x

% Hva skjer? Siden startverdien er et fikspunkt burde vi bare få den 
% igjen og igjen. Dette ser ut til å gå helt fint i begynnelsen.
% Ser at vi får en liten avrundingsfeil på et tidspunkt, og pga
% formen på funksjonen blåses denne opp når vi øker antall iterasjoner.
% Dette fører til at selv om vi begynner i et fikspunkt ser ikke følgen ut
% til å konvergere mot fikspunktet. Teoretisk helt på jordet, men skyldes
% altså avrundingsfeil.