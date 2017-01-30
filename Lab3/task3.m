Ntheta = 10;
Nphi = 10;
btheta = pi/2;
bphi = pi/4;

f = @(theta, phi) 10 .* cos(theta) .* sin(phi);

C = simp2(f, 0, btheta, 0, bphi, Ntheta, Nphi);
fprintf('The value of C is %.3f\n', C)

