% Lotteri til plenum 19/2

% Parametre: Antall rader og seter:

antall_rader=12;
antall_seter=19;


% Trekker side av salen, 0=venstre, 1=høyre:

% Lager utskrift med litt pause for spenning:

disp('TREKKER SIDE:')

for i=1:3
pause(1)
disp('.')
end

% Kommando rand trekker tilfeldig tall mellom 0 og 1. Round runder av
% tallet
side=round(rand);

pause(1)

% Lager pen utskrift 
if side==0
    disp('VENSTRE SIDE!')
else
    disp('HØYRE SIDE!')
end

% Litt mer pause
pause(1.5)

% Trekker radnummer:

% Lager utskrift med litt pause for spenning:

disp('TREKKER RAD:')

for i=1:3
pause(1)
disp('.')
end


% MÃ¥ justere for antall rader og runde av til heltall.
rad=round(antall_rader*rand);

% Lager teksten jeg vil vise fram.
X=['RAD NUMMER ' num2str(rad) '.'];

pause(1)

% Viser fram tekst.
disp(X)


pause(1.5)

% Trekker setenummer:

% Lager utskrift med litt pause for spenning:

disp('TREKKER SETE:')

for i=1:3
pause(1)
disp('.')
end

% MÃ¥ justere for antall seter og runde av til heltall.
sete=round(antall_seter*rand);

% Lager teksten jeg vil vise fram.
Y=['SETE NUMMER ' num2str(sete) ' FRA MIDTEN.'];

pause(1)

% Viser fram tekst.
disp(Y)

disp('GRATULERER! :-D')

