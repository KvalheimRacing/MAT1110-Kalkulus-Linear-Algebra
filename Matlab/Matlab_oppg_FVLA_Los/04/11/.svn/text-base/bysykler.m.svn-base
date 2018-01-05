function C=bysykler(a,b,c,d)
  % Hver kolonne i C svarer til et tidspunkt. 
  % 1. rad inneholder alle x-verdier, andre rad alle y-verdier osv.
  C=[a;b;c;d];
  
  A=[0.46 0.115 0.115 0.345;...
     0.23 0.46 0.23 0.23;...
     0.23 0.23 0.2875 0.23;...
     0.115 0.23 0.2875 0.23];
  for n=1:49
    C(:,n+1) = A*C(:,n);
  end
