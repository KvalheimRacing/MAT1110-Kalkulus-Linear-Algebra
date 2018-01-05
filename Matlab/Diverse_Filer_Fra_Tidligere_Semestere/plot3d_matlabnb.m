%% Matlab notebook for producing the Matlab plots
% 
% We first initialize the height and radius of the mountain.
% 
%%
h0 = 2277;   
R = 4;  
% 
% The following code defines the grid for the function $h(x,y)$ defined by Equation (2.1) in Section 2.1.1.
% 
%%
x = linspace(-10, 10, 41);
y = x;
[xv, yv] = meshgrid(x, y);
hv = h0./(1 + (xv.^2+yv.^2)/(R^2));      % Elevation coordinates (m)
% The coordinates of the parameterized curve $\bm{r}(t)$ defined by Equation 2.2 
% in Section 2.1.2 are computed as follows.
% 
%%
s = linspace(0, 2*pi, 100);
curve_x = 10*(1 - s/(2*pi)).*cos(s);
curve_y = 10*(1 - s/(2*pi)).*sin(s);
curve_z = h0./(1 + 100*(1 - s/(2*pi)).^2/(R^2));
% 
% The gradient field of $h(x,y)$ and its grid are produced as follows.
% 
%%
x2 = linspace(-10, 10, 11);
y2 = x2;
[x2v, y2v] = meshgrid(x2, y2);
h2v = h0./(1 + (x2v.^2 + y2v.^2)/(R^2)); % Surface on coarse grid
% 
%%
[dhdx, dhdy] = gradient(h2v); % dh/dx, dh/dy
% 
% 
% 
%% Surface plots
% 
% Figure 2.10 is produced as follows
% 
% Simple plot of mountain
figure(1)
mesh(xv, yv, hv);
% Simple plot of mountain and parametric curve
figure(2)
surf(xv, yv, hv);
colormap winter
% add the parametric curve. LineWidth controls the width of the curve
hold on
plot3(curve_x, curve_y, curve_z, 'LineWidth', 20);
% 
% 
% 
%% Contour plots
% 
% The following code produces the plots in Figure 2.11 and Figure 2.12.
% 
% Default two-dimensional contour plot with 7 colored lines
figure(3)
contour(xv, yv, hv);
axis equal
% Default three-dimensional contour plot
figure(4)
contour3(xv, yv, hv);
% View the contours by displaying as an image
figure(6)
pcolor(hv/max(max(abs(hv))));
% 10 contour lines (equally spaced contour levels)
figure(7)
contour(xv, yv, hv, 10);
axis equal
% 10 black ('k') contour lines
figure(8)
contour(xv, yv, hv, 10, 'k');
axis equal
% Specify the contour levels explicitly as a list
figure(9)
levels = [500, 1000, 1500, 2000];
contour(xv, yv, hv, levels);
axis equal
% Add labels with the contour level for each contour line
figure(10)
cs = contour(xv, yv, hv);
clabel(cs, 'FontSize',12);
axis equal
% 
% 
% 
%% Vector field plots
% 
% Figure 2.13 is produced as follows.
% 
figure(11)
quiver(x2v, y2v, dhdx, dhdy, 'color', [1 0 0]);
hold on
contour(xv, yv, hv);
axis equal

