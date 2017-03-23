function sums=sumave(N, T, k)
    t = values(T, N);
    fo = 1/T;
    sines = sin(2 * pi * k * fo .* t);
    sums = mean(sines);
    if abs(sums) < 10 * eps(1)
        sums = 0;
    end
    plot(t, sines);
end
