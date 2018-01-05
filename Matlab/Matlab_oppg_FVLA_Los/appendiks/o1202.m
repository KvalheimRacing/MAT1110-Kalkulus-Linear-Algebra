% Oppgave 12.2
syms x y z
uttrykk1=int('x+y*exp(2*z)','z',0,2)
uttrykk2=int(uttrykk1,'y',1,3)
uttrykk3=int(uttrykk2,'x',0,1)
eval(uttrykk3)
