R = 1;
rho_sphere = 0.85;
mass = 4/3 * pi * R^3 * rho_sphere;
water_mass = @(h) 1/3 * pi * (3 * R * h^2 - h^3);
F = @(h) mass - water_mass(h);  % Should equal zero


hmin = 0;
hmax = 3;
hmid = (hmin + hmax)/2;
for N=1:1000
    product = F(hmin) * F(hmid);
    if product < 0
        hmax = hmid;
        hmid = (hmin + hmax)/2;
    elseif product > 0
        hmin = hmid;
        hmid = (hmin + hmax)/2;
    else
        hmax = hmid;
        hmin = hmid;
        break;
    end
end
h = hmid;
fprintf('h is %f and F(h) is %f\n', h, F(h))

[THETA, PHI] = meshgrid(linspace(0, pi, 50), linspace(0, 2*pi, 50));

x = R.*sin(THETA).*cos(PHI);
y = R.*sin(THETA).*sin(PHI);
z = R.*cos(THETA) - h + R;
surf(x, y, z)
hold on;

[X, Y] = meshgrid(-1:0.1:1);
Z = 0 .* X;
surf(X, Y, Z)
