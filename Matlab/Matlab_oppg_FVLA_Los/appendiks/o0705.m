% Oppgave 7.5
t=-1/6;
T=[1 t t t t t t 0 0 0 0 0 1;...
   0 1 t t t t t t 0 0 0 0 1;...
   0 0 1 t t t t t t 0 0 0 1;...
   0 0 0 1 t t t t t t 0 0 1;...
   0 0 0 0 1 t t t t t t 0 1;...
   0 0 0 0 0 1 t t t t t t 1;...
   0 0 0 0 0 0 1 t t t t t 1;...
   0 0 0 0 0 0 0 1 t t t 2*t 1;...
   0 0 0 0 0 0 0 0 1 t 2*t 2*t 1;...
   0 0 0 0 0 0 0 0 1 t 2*t 2*t 1;...
   0 0 0 0 0 0 0 1 t t t 2*t 1;...
   0 0 0 0 0 0 1 t t t t t 1];
rref(T)







