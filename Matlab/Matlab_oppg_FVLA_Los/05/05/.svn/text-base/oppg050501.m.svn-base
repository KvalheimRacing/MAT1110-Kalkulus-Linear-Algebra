function [x,y]=oppg050501(x1,y1,antalliterasjoner)
  x=zeros(antalliterasjoner+1);
  y=zeros(antalliterasjoner+1);
  x(1)=x1;
  y(1)=y1;

  for n=1:antalliterasjoner
    x(n+1)=0.5*sin(x(n)+y(n));
    y(n+1)=0.5*cos(x(n)-y(n));
  end
