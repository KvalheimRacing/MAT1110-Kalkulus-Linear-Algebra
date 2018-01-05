function [ D ] = daff(a,b,x,y,N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
D=[x,y];
for n=3:N;
    D(n)=a*D(n-1)+b*D(n-2);
end

end

