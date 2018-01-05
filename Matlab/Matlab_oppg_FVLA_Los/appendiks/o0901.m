% Oppgave 9.1
a=zeros(1,30);
a(1) = 1;
a(2) = 3;
for k=3:30
  a(k) = 3*a(k-1)-2*a(k-2);
end
