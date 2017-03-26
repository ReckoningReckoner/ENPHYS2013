function [tt, vv] = Fseries(t, v)
    samples = 100;
    [a, b] = dft(v);
    if (mod(length(v), 2) == 0)
        a(end) = a(end)/2;
    end

    tt = linspace(0, 1, samples*length(t));

    f0t = (0:1:length(tt)-1)/length(tt);
    k = 0:1:floor(length(v)/2);

    inside = 2 * pi * ones(length(a), 1) .* f0t .* k';
    inside = inside';

    avals = cos(inside) * a';
    bvals = sin(inside) * b';

    vv = avals + bvals;
    vv = vv';
end
