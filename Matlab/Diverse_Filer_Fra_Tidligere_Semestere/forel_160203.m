x=linspace(-10,10,100);
y=x;
[xv,yv]= meshgrid(x,y);
zv = sqrt(xv.^2+yv.^2);

%% Kjeglesnitt som er en sirkel
figure(1)
pv = 0*xv + 2;
mesh(xv,yv,zv);
hold on
mesh(xv,yv,pv);
axis equal

%% Kjeglesnitt som er en ellipse
figure(2)
pv = 0.5*xv + 2;
mesh(xv,yv,zv);
hold on
mesh(xv,yv,pv);
axis equal

%% Kjeglesnitt som er en parabel
figure(3)
pv = xv + 2;
mesh(xv,yv,zv);
hold on
mesh(xv,yv,pv);
axis equal

%% Kjeglesnitt som er en hyperbel
figure(4)
pv = 1.5*xv + 2;
mesh(xv,yv,zv);
hold on
mesh(xv,yv,pv);
axis equal