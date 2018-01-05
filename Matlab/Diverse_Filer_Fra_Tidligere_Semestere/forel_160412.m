% Eksempel 4.10.5
[V, D] = eig([2 -1; 1 0])

% Eksempel 4.10.6
[V, D] = eig([5 1 -1; 0 3 0; -2 -1 4]/3)

% Eksempel 4.10.7
[V, D] = eig([1 -2; 2 1])

% Eksempel 4.11.2
A = [0.7 0.3 0.4;0.1 0.5 0.2; 0.2 0.2 0.4];
[V, D] = eig(A)
% De neste to linjene finner koeffisientene c_1, c_2, c_3
% når (144,0,0) skrives som en lineær kombinasjon av egenvektorer
B = rref([13 1 1 144; 5 -1 1 0; 6 0 -2 0])
c = B(:,4)
% Plott av fordeling av handlevogner i stativene over tid.
% Reproduserer plottet i boka
n= (0:10)';
rn = c(1)*1.^n*[13 5 6] + c(2)*(0.4).^n*[1 -1 0] + c(3)*(0.2).^n*[1 1 -2];
plot(n,rn(:,1),n,rn(:,2),n,rn(:,3))
legend('X','Y','Z')