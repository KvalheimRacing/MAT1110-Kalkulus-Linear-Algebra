%% Summere tall
3+4

%% Potens

2^4

%% Divisjon

3/4

%% $\sin(x)$ og tallet $\pi$

sin(pi/2)

%% $e^x$

exp(2)

%% Kvadratrot

sqrt(16)

%% Regne ut logaritmer og verifisere regnereglene for disse

log(exp(2))

%% Sinus i grader
% Sinus regnes ut i radianer. F?lgende funksjon regner ut i grader i stedet.

sind(pi/2)

%% Presisjon
% Bruke 16 siffers presisjon i stedet

format long
sind(pi/2)

% Tilbake til 4 siffers presisjon

format short
sind(pi/2)

%% Definere variable. 
% semikolon gj?r at ingenting blir skrevet ut

a=1
a=1;
b=-2;
c=a*b

%% Funksjoner for avrunding 

floor(2.5)
ceil(2.5)
round(2.5)

%% Generere tilfeldige tall

rand(3)

%% Definere matriser

A=[2 -3 1; 0 1 3; -4 2 1]
B=[2 3 -1; 0 1 -3; 4 -2 1];

%% Enkle matriseoperasjoner
A+B
A-B
3*A
A^7

%% Komponentvis potens
A.^7

%% Transponere en matrise
A
A'

%% Invertere en matrise

inv(A)

%% Determinant

det(A)

%% Multiplisere matriser

A*B

%% Radvektorer og s?ylevektorer

b=[-2 5 6]
c=[7; -3; 2]


%% Skalarprodukt og vektorprodukt
dot(b, c)
cross(b, c)

%% Diverse m?ter ? lage nye matriser p?.

rand(2,3)
zeros(2,3)
ones(2, 3)
eye(3)

%% Komponentvise operasjoner

A.*B
A./B
A/B
sin(A)
exp(A.*(B.^2))

%% Regne ut maksimum i matriser

max([1 2 3])
max([1 2 3; 4 5 6])
max([1 7 3; 4 5 6])

%% Generere lister og regne ut sum
a=1:10
sum(a)
sum(a.^2)
a=1:2:10
t=linspace(0,2,100)

%% Enkel plotting
plot(t,t.^2)


%% Kombinere matriser
A
B
C=[A B]
C=[A; B]

%% Trekke ut deler av en matrise
C(1,2)
C(1,:)
C(:,1)
C(1:3,2)
C([1,3],[1,3])