% Oppgave 10.2
function [x,y]=oppg102(a,b,c,d,e,f)
  determinant = oppg101(a,b,c,d);
  if determinant ~=0
    v = [a b;c d]\[e; f];
    x=v(1);
    y=v(2);
  else
    disp('Likningssettet har ikke entydig løsning');
  end
