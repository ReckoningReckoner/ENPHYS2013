function sums=sumave2(N, T, k, m, mode)
    t = values(T, N);
    fo = 1/T;
    if mode == 0
        sines = sin(2 * pi * k * fo .* t) .* sin(2 * pi * m * fo .* t);
    elseif mode == 1
        sines = cos(2 * pi * k * fo .* t) .* cos(2 * pi * m * fo .* t);
    elseif mode == 2
        sines = sin(2 * pi * k * fo .* t) .* cos(2 * pi * m * fo .* t);
    end
    sums = mean(sines);
    if abs(sums) < 10 * eps(1)
        sums = 0;
    end
    plot(t, sines);
end
