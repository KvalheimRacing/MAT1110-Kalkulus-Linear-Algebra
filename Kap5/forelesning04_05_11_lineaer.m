function [x, y] = lineaer(N)

x = zeros(1,N); % byttedyr
y = zeros(1,N); % rovdyr

x(1) = 1000;
y(1) = 100;

a = 1.01;
b = 0.03;
c = 0.001;
d = 0.98;

for n=1:N-1
    x(n+1) = a*x(n) - b*y(n);
    y(n+1) = c*x(n) + d*y(n);
end

end

