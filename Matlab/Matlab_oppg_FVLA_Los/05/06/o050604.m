% Oppgave 5.6.4
newtonfler([a;b],...
           @(x)[-x(1)+x(2)^2-3;x(1)^2-x(2)+sin(x(1)-x(2))-2],...
           @(x)[-1 2*x(2);2*x(1)+cos(x(1)-x(2)) -1-cos(x(1)-x(2))]) 