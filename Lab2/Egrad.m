function [Ex, Ey, Ez] = Egrad(V, x, y, z)
    h = 0.001;
    [dx, dy, dz] = pder(V, x, h, y, h, z, h);
    Ex = -dx;
    Ey = -dy;
    Ez = -dz;
end
