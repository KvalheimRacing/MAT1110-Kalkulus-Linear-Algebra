% En følge er gitt ved a_1=1, a_2=3, a_{n+2}=3a_{n+1}-2a_n.

% Skriv et program som genererer de 30 første leddene i følgen.

% Triks: Legg følgen inn i et tuppel/vektor:

n = 30; % Antall ledd i følgen vi vil finne
a = zeros(1,n); % Lag vektor med lengde n med bare nuller.

a(1) = 1; % Legg inn de to første leddene i følgen.
a(2) = 3;

%Sjekker at ser riktig ut:
%a

for i = 3 : n % Vil finne ledd 3 til n i følgen
    a(i) = 3*a(i-1) - 2*a(i); % Bruker formel fra tekst.
end

%Skriver ut følgen:
a

% For n = 30: Utskrift ser litt rar ut pga blir fryktelig store tall etter hvert:
% 1.0e+13 = 10^13, dermed ser f.eks. tallet 1 ut som 0 pga har med få desimaler.

% Det vi gjør er likevel riktig. Test ved å sette n = 10 f.eks.
