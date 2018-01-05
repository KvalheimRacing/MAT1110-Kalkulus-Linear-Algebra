function x=newtonfler(x,F,J,epsilon,N)
  % Funksjon som utf¿rer Newtons metode i flere variable
  % x: s¿ylevektor som inneholder startpunktet for iterasjonen 
  % F: funksjon som regner ut funksjonsverdiene
  % J: Funksjon som regner ut Jacobimatrisen
  n=0;
  while norm(F(x)) > epsilon & n<=N
    x=x-J(x)\F(x); 
    fval = F(x);
    fprintf('itnr=%2d x=[%13.10f,%13.10f] F(x)=[%13.10f,%13.10f]\n',... 
             n,x(1),x(2),fval(1),fval(2)) 
    n = n + 1;
  end