addpath('../Utils/');

X = [1 3 5 9 10 14];
Y = [2 3 4 5 3 3.5];

% fprintf('The coefficients are:\n');
% P = polyinterp(X, Y)

hold on;
plot(X, Y, 'o')
xvalues = linspace(X(1), X(end), 100);
plot(xvalues, polyval(fliplr(P), xvalues))

[A, B, C, D] = nspline(X, Y)
splineval(X, A, B, C, D);
legend('Original', 'Polyfit', 'Spline')
hold off;

