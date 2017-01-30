function integ = simp2(f, xa, xb, ya, yb, Nx, Ny)
hx = (xb - xa)/(2 * Nx);
hy = (yb - ya)/(2 * Ny);

[X, Y] = meshgrid(xa:hx:xb,ya:hy:yb);
Z = f(X, Y);

wx = weight(2 * Nx + 1); % call the weight function *note the 2*Nx+1 (wx is an odd number)
wy = weight(2 * Ny + 1);
integ = (Z * wx * hx/3)' * wy * hy/3; % perform the integration
end % function simp2
