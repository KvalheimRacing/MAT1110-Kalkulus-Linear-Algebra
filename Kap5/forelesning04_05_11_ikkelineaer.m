function [x, y] = ikkelineaer(N)

x = zeros(1,N); % byttedyr
y = zeros(1,N); % rovdyr

x(1) = 1000;
y(1) = 100;

a = 1.01;
b = 0.00003;
c = 0.00001;
d = 0.98;

for n=1:N-1
    x(n+1) = a*x(n) - b*x(n)*y(n);
    y(n+1) = c*x(n)*y(n) + d*y(n);
end

end

