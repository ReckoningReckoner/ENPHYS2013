function [Ex, Ey, Ez] = Coloumb(x, y, z)
    r = [x, y, z];
    runit = r./norm(r);
    E_vector = runit./norm(r)^2;
    Ex = E_vector(1);
    Ey = E_vector(2);
    Ez = E_vector(3);
end
