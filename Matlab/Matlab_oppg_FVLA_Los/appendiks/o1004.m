% Oppgave 10.4
function ret=oppg104(a,b,m)
  ret = zeros(1,m);
  if (m >= 1)
    ret(1) = b;
  end
  for (k=2:m)
    ret(k) = a*ret(k-1)*(1-ret(k-1));
  end

plot(oppg104(1.5,0.2,100))
figure(2)
plot(oppg104(2.8,0.2,100))
figure(3)
plot(oppg104(3,0.2,100))
figure(4)
plot(oppg104(3.1,0.2,100))
figure(5)
plot(oppg104(3.5,0.2,100))
figure(6)
plot(oppg104(3.9,0.2,100))
figure(7)
plot(oppg104(1.5,0.8,100))
figure(8)
plot(oppg104(2.8,0.8,100))
figure(9)
plot(oppg104(3,0.8,100))
figure(10)
plot(oppg104(3.1,0.8,100))
figure(11)
plot(oppg104(3.5,0.8,100))
figure(12)
plot(oppg104(3.9,0.8,100))
