% Oppgave 5.4: 2)

% To dyreslag i samme område: x_n og y_n av hvert slag i år n.

% Bestandsutvikling? Plot for x_1=20, y_1=2000. Likevektspunkt?

%INPUT: 
final_time = 100; % Antall år man vil se utviklingen for
x_1 = 20; % Antall dyr ved start.
y_1 = 2000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lager vektorer med bare nuller til å fylle opp med utviklingen av
% dyrebestandene:
x = zeros(1,final_time); 
y = zeros(1,final_time);

% Legger inn startbetingelse i vektorene:
x(1) = x_1;
y(1) = y_1;

% Løkke for å finne utvikling; bruker modell i oppgavetekst:
for i=1:(final_time-1)
    x(i+1) = 0.9*x(i) + 0.01*y(i) - 10;
    y(i+1) = -1.01*x(i) + y(i) + 300;
end 

% Lager tidsvektor til å plotte mot:
time = 1:final_time;

plot(time, x)
hold on
plot(time, y, 'r')
legend('x','y')

% Likevektspunkt: Ved å zoome inn på plot der grafene er stabilisert til
% rette linjer, ser vi at antall x-dyr har likevekt ca. 297 og antall y-dyr
% har likevekt ca. 3970.
