% Oppgave 5.4: 6 b) og c)

% Input:

alpha = 0.05;
beta = 0.02;

% Startpriser for firmaene:
p_1 = 4;
q_1 = 3;

% Antall år vi vil se utviklingen for:
years = 20;

%%%%%%%%%%

% Lager vektorer som lagrer prisene:

p = [p_1];
q = [q_1];

% Lager en løkke som regner ut prisene for det antallet år vi er
% interessert i:

for i=1:(years-1)
    p(i+1)=1.1*(q(i)/(1+alpha*q(i)));
    q(i+1)=1.1*(p(i)/(1+beta*p(i)));
end

% Lager en tid å plotte mot:
time=1:1:years;

% Plotter prisutviklingen
plot(time,p)
hold on
plot(time,q)
legend('Pris Firma 1','Pris Firma 2')
hold off

% Gjør alle kjøringene som oppgaven ber om: Se på plottene og si hva som
% skjer. Generelt når firmaenes etterspørsel er like, dvs. alpha=beta: Ser 
% sikksakk/hatteform. Dvs, det firmaet som har høyest
% pris et år vil sette ned prisen neste år, mens firmaet med lavest pris
% vil sette den opp. Det fører til at de bytter på å være dyrest/billigst.
% Ettersom tiden går nærmer prisene seg hverandre (ser ut til å gå mot en
% likevektstilstand), og prisen er lavere enn i begynnelsen. Bedre for
% konsumentene!

% Når firmaenes etterspørsel ikke er like, beta < alpha (som i c)): 
% vil man også gå mot en likevekt, men der Firma 2 har en høyere pris 
% enn Firma 1. De kan tillate seg dette pga lavere beta, dvs. generelt
% høyere etterspørsel.