function [ x,y ] = newton( x1, y1, N )

a = 1.01;
b = 3*10^-5;
c = 1*10^-5;
d = 0.98;

x = zeros(1,N);
y = zeros(1,N);

x(1) = x1;                         % r_1 = (x1, y1) initial guess
y(1) = y1;

for n=1:N-1
    u = [x(n); y(n)];                                       % old point r(n)

    v = [(a-1)*x(n) - b*x(n)*y(n); c*x(n)*y(n)+(d-1)*y(n)]; % value
    A = [(a-1)-b*y(n) -b*x(n); c*y(n) c*x(n)+(d-1)];        % derivative

    u = u - A\v;                                            % new point r(n+1)
    
    x(n+1) = u(1);
    y(n+1) = u(2);
end

end

