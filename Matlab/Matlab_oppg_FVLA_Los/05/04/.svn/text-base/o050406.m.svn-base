% Oppgave 5.4.6 b)
N = 50;
a=0.02;
b=0.03;
x=zeros(2,N);
x(:,1)=[10;12];
for n=1:N
    x(1,n+1)=1.1*(x(2,n)/(1+a*x(2,n)));
    x(2,n+1)=1.1*(x(1,n)/(1+b*x(1,n)));
end
plot(x(1,:))
hold on
plot(x(2,:),'r')
	
	
	

