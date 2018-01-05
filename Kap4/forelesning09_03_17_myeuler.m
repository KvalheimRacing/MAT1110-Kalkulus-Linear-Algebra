function x=myeuler(x0,dt,T)
xmin=-30; xmax=30; ymin=-30; ymax=30; zmin=-10; zmax=50;
shg;
axis([xmin xmax ymin ymax zmin zmax]);
set(gca,'View',[28 8]);
grid;
h=line(x0(1),x0(2),x0(3));
set(h,'Marker','o','MarkerSize',5,'color','r');
t=0;
while t<=T,
    x=x0+dt*lorenz(x0);
    line([x0(1) x(1)],[x0(2) x(2)],[x0(3) x(3)]);
    x0=x;
    set(h,'Xdata',x0(1),'YData',x0(2),'Zdata',x0(3));
    t=t+dt;
    pause(0.0025);
end


function X=func(X)
x=X(1); y=X(2); z=X(3);

X(1)=-y;
X(2)=x;
X(3)=x-0.05*z;



