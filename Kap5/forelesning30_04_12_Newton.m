function [ x,y ] =newton( a,b,N )
x(1)=a;
y(1)=b;
u=[a;b];
for n=1:N-1
    v=[x(n)^3-3*x(n)*y(n)^2+1;3*x(n)^2*y(n)-y(n)^3];
    A=[3*x(n)^2-3*y(n)^2,-6*x(n)*y(n);6*x(n)*y(n),3*x(n)^2-3*y(n)^2]
    u=u-A\v;
    x(n+1)=u(1);
    y(n+1)=u(2);

end

