function [x, y, z] = args(x1, y1, z1, phi, z)
    x = argx(x1, y1, z1, phi, z);
    y = argy(x1, y1, z1, phi, z);
    z = argz(x1, y1, z1, phi, z);
end
