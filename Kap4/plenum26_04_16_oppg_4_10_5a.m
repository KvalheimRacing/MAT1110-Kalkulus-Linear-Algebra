% Oppgave 4.10: 5a)

% Bruk MATLAB til å finne egenverdiene og egenvektorene til matrisen A.
% Bruk også MATLAB til å skrive vektoren x som en lineærkombinasjon av
% vektorene.

A = [2.3 -0.3 1.2 3; 
    1.2 3 2.4 -1.2;
    3.3 -1.2 0.5 7;
    -2 3.1 -2.1 1.3];

x = [-1.3; 2.4; 0.04; 4.1];

% Finner egenvektorer og egenverdier for A: Søylene i matrisen U er
% egenvektorene til A, mens diagonalelementene i V er de tilhørende 
% egenverdiene.

[U,V] = eig(A)

% Skrive x som lineærkombinasjon av egenvektorene til A:

radredusert_matrise = rref([U x])