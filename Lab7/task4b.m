x=[1,3,4.5,7,8,10]; 
y=[2,3,3.6,3.8,3.5,3];
M=3 % cubic poly

P = fliplr(least_sq(x, y, M)
xvalues = linspace(1, 10, 20);
hold on;
plot(x, y);
plot(xvalues, polyval(P, xvalues));
hold off;
