% Oppgave 3.3
a=0:1:100;
a=a./100;
b=sum(a.^2);
(1/100)*(b-1) % Nedre trappesum
(1/100)*b     % Øvre trappesum
