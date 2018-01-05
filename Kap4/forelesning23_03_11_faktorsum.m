function sum = faktorsum(n)
sum = 0;
for a=1:n-1
    if rem(n,a)==0
        sum = sum+a;
    end
end
