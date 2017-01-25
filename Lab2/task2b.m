V = @(x, y, z) 1./sqrt(x.^2 + y.^2 + z.^2);
xi = 1;
yi = 2;
zi = 3;


[Ex, Ey, Ez] = Egrad(V, xi, yi, zi);
[Ex2, Ey2, Ez2] = Coloumb(xi, yi, zi);

fprintf('Gradient Value of Ex: %.2e N/C\n', Ex);
fprintf('Coloumb Value of Ex:  %.2e N/C\n', Ex2);
fprintf('\n');
fprintf('Gradient Value of Ey: %.2e N/C\n', Ey);
fprintf('Coloumb Value of Ey:  %.2e N/C\n', Ey2);
fprintf('\n');
fprintf('Gradient Value of Ez: %.2e N/C\n', Ez);
fprintf('Coloumb Value of Ez:  %.2e N/C\n', Ez2);
