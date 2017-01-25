function [Gx, Gy] = gradient(XX, YY, f)
    h = 0.001;
    [Gx, Gy] = pder(f, XX, h, YY, h);
    quiver(XX, YY, Gx, Gy)
end
