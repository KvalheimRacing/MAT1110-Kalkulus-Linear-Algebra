function [x,y] = Fisk(a,b,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x(1)=a;
y(1)=b;
for n=2:N
    x(n)=1.01*x(n-1)-0.015*y(n-1);
    y(n)=0.99*y(n-1)+0.01*x(n-1);
end
end

