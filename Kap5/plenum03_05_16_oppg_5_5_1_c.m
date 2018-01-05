% Oppgave 5.5: 1)c)

% Iterasjon av funksjon F fra R^2 inn i R^2.

% Lage program for aa beregne folgen u_{n+1} = F(u_n). Skal kjore program 6
% ganger med tilfeldig trukket input mellom -2.5 og 2.5.

%INPUT:

antall_subplot = 6;
antall_iterasjoner = 10;
nedre_grense_input = -2.5;
ovre_grense_input =2.5;

for j=1:antall_subplot
    % Tilfeldig generert input:
    x_1 = (ovre_grense_input -nedre_grense_input)*rand + nedre_grense_input;  
    y_1 = (ovre_grense_input -nedre_grense_input)*rand + nedre_grense_input; 

%%%%%%%%%%%%%%%%%%%%%%%%

    % Lager vektorer til å fylle opp med folgeverdier:
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

    % Plotter folgen. Lager plot av 2*3 subplot:
    subplot(2,3,j)
    plot(x,y)
    % Plotter ogsaa startpunktet til folgen for aa lettere kunne se
    % sluttpunktet:
    hold on % Vil plotte dette i samme plot.
    plot(x_1,y_1,'*') % Plotter startpunktet.
    % Laaser aksene for enklere sammenligning. Aksene er valgt pga
    % trekke-intervall:
    axis([-2.5 2.5 -2.5 2.5]) 
end

% Fra plottene: Alle folgene ser ut til aa konvergere mot samme punkt, ca.
% (0.385, 0.495). Dermed ser det ut til at vi har konvergens mot dette punktet
% for startpunkter mellom -2.5 og 2.5. Merk at dette også stemmer overens
% med resultatene fra b). 

