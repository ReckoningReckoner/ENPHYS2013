function y=argy(x1, y1, z1, phi, z)
   global R K MU;

   Kx = K .* -sin(phi);
   Ky = K .* cos(phi);
   Kz = 0;

   rx = x1 - R .* cos(phi);
   ry = y1 - R .* sin(phi);
   rz = z1 - z .* ones(size(rx));

   scalar = MU .* R./(4 * pi .* sqrt(rx.^2 + ry.^2 + rz.^2).^3);
   y = scalar .* (Kz .* rx - Kx .* rz);
end
