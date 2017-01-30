function [Bx, By, Bz] = B(x1, y1, z1)
    global D;
    phia = 0;
    phib = 2*pi;
    za = 0;
    zb = D;
    Nphi = 10;
    Nz = 10;

    fx = @(phi, z) argx(x1, y1, z1, phi, z);
    fy = @(phi, z) argy(x1, y1, z1, phi, z);
    fz = @(phi, z) argz(x1, y1, z1, phi, z);

    Bx = simp2(fx, phia, phib, za, zb, Nphi, Nz);
    By = simp2(fy, phia, phib, za, zb, Nphi, Nz);
    Bz = simp2(fz, phia, phib, za, zb, Nphi, Nz);
end
