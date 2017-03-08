X = [0.01 0.06 0.4 0.9 1.0];
Y = [0.04 0.1 0.2 0.05 0];

L = 1;
S=@(a, x) a(1).*(x./L).^(1./2)+a(2).*(x./L)+a(3).*(x./L).^2+a(4).*(x./L).^3+a(5).*(x./L).^4;

P = airfoil(X, Y)
xvalues = linspace(0, 1, 100);

hold on;
plot(xvalues, S(P, xvalues));
plot(xvalues, -S(P, xvalues));
plot(X, Y, '*');
hold off;
