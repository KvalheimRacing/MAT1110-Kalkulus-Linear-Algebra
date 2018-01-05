function F=lorenz(X)
x=X(1); y=X(2); z=X(3);

sigma=10; rho=28; beta=8/3;

F(1)=sigma*(y-x);
F(2)=x*(rho-z)-y;
F(3)=x*y-beta*z;

F=F';