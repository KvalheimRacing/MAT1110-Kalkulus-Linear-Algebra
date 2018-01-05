function [ F ] = Fibo(a,b,N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
F=[a,b];
for n=3:N
    F(n)=F(n-1)+F(n-2);
end
end

