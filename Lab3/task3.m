Ntheta = 10;
Nphi = 10;
atheta = pi/2;
aphi = pi/4;

C = double_simpson_integral(Ntheta, Nphi, atheta, aphi);
fprintf('The value of C is %.3f\n', C)
