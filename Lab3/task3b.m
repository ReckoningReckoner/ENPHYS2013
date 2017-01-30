global R K MU phia phib za zb Nphi Nz
R = 0.025;
K = 0.95e6;
MU = 4e-7 * pi;
D = 0.05;

phia = 0;
phib = 2*pi;
d = 0.005;
za = D + d;
zb = 2 * D + d;
Nphi = 10;
Nz = 10;

hphi = (phib - phia)/(2 * Nphi);
hz = (zb - za)/(2 * Nz);

[PHI, Z] = meshgrid(phia:hphi:phib, za:hz:zb);
[Nr, Nc] = size(Z);

for n=1:Nr
  for m=1:Nc
      phi = PHI(n, m);
      x = R .* cos(phi);
      y = R .* sin(phi);
      z = Z(n, m);
      [Bx, By, Bz] = B(x, y, z);

      Kx = -K .* -sin(phi);
      Ky = -K .* cos(phi);
      Kz = 0;

      argsx(n, m) = R .* (Ky .* Bz - Kz .* By);
      argsy(n, m) = R .* (Kz .* Bx - Kx .* Bz);
      argsz(n, m) = R .* (Kx .* By - Ky .* Bx);
  end
end


wx = weight(2 * Nphi + 1);
wy = weight(2 * Nz + 1);
Fx = (argsx * wx * hphi/3)' * wy * hz/3;
Fy = (argsy * wx * hphi/3)' * wy * hz/3;
Fz = (argsz * wx * hphi/3)' * wy * hz/3;

fprintf('Fx = %.4f\n', Fx);
fprintf('Fy = %.4f\n', Fy);
fprintf('Fz = %.4e\n', Fz);
