% Oppgave 5.4: 6 b) og c)

% Input:

alpha = 0.02;
beta = 0.05;

% Startpriser for firmaene:
p_1 = 4;
q_1 = 3;

% Antall aar vi vil se utviklingen for:
years = 40;

%%%%%%%%%%

% Lager vektorer som lagrer prisene:

p = [p_1];
q = [q_1];

% Lager en lokke som regner ut prisene for det antallet ar vi er
% interessert i:

for i=1:(years-1)
    p(i+1)=1.1*(q(i)/(1+alpha*q(i)));
    q(i+1)=1.1*(p(i)/(1+beta*p(i)));
end

% Lager en tid aa plotte mot:
time=1:1:years;

% Plotter prisutviklingen
plot(time,p)
hold on
plot(time,q)
legend('Pris Firma 1','Pris Firma 2')
hold off

% Gjor alle kjoringene som oppgaven ber om: Se paa plottene og si hva som
% skjer. Generelt naar firmaenes ettersporsel er like, dvs. alpha=beta: Ser 
% sikksakk/hatteform. Dvs, det firmaet som har hoyest
% pris et aar vil sette ned prisen neste aar, mens firmaet med lavest pris
% vil sette den opp. Det forer til at de bytter paa aa vaere dyrest/billigst.
% Ettersom tiden gaar naermer prisene seg hverandre (ser ut til aa gaa mot en
% likevektstilstand), og prisen er lavere enn i begynnelsen. Bedre for
% konsumentene!

% Naar firmaenes ettersporsel ikke er like, beta < alpha (som i c)): 
% vil man ogsaa gaa mot en likevekt, men der Firma 2 har en hoyere pris 
% enn Firma 1. De kan tillate seg dette pga lavere beta, dvs. generelt
% hoyere ettersporsel.