function [ F ] = Fibonacci(N,x,y)
%Regner ut Fibonaccitallene fra 1 til N
%   Gidder ikke
F=[x,y];
for n=3:N;
    F(n)=F(n-1)+F(n-2);
end

end

