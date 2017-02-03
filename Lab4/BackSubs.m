function X=BackSubs(AB)
    [height, width] = size(AB);
    X = zeros(height, 1);
    for i=1:1:height
        resid = 0;
        for j=1:1:i-1
            resid = resid + X(height - j + 1) * AB(height - i + 1, width - j);
        end
        X(height - i + 1) = (AB(height - i + 1, width) - resid)/AB(height - i + 1, width - i);
    end
end
