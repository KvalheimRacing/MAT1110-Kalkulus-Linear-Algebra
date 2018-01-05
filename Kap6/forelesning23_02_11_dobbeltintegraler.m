% Oppgave 6.1.1.c

>> dblquad(@(x,y)x.^2.*exp(y),-1,1,0,1)

ans =

    1.1455

>> (2/3)*(exp(1)-1)

ans =

    1.1455



% Oppgave 6.1.1.e

>> dblquad(@(x,y)x.*y.*exp(x.^2.*y),0,2,1,2)

ans =

  365.2950

>> (1/8)*exp(8) - (1/8)*exp(4) - (1/2)

ans =

  365.2950


>> % Eksempel 6.3.1
>> 
>> xd = linspace(1,4,30);
>> yd = linspace(0,3,30);
>> [x,y] = meshgrid(xd,yd);
>> z = log(x.^2+y.^2).*(x>=y).*(x.^2+y.^2>=4).*(x.^2+y.^2<=16);
>> surf(x,y,z);
>>
>> dblquad(@(x,y)log(x.^2+y.^2).*(x>=y).*(x.^2+y.^2>=4).*(x.^2+y.^2<=16),1,4,0,3)

ans =

   10.5301

>> 7*pi*log(2)-(3/2)*pi

ans =

   10.5307

