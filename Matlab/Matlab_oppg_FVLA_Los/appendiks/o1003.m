% Oppgave 10.3
function ret=oppg103(a,b,c,d,m)
  if (m >= 1)
    ret(1) = c;
  end
  if (m >= 2)
    ret(2) = d;
  end
  for (k=3:m)
    ret(k) = a*ret(k-1) + b*ret(k-2);
  end
