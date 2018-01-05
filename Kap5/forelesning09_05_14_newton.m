function [ x,y ] =newton( a,b,N )
x(1)=a;
y(1)=b;
u=[a;b];
for n=1:N-1
    v=[x(n)^3+(y(n))^2;exp(x(n))-(y(n))^2];
    A=[3*x(n)^2,2*y(n);exp(x(n)),-2*y(n)];
    A\v;
    u=u-A\v;
    x(n+1)=u(1);
    y(n+1)=u(2);

end
v