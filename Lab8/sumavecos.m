function sums=sumavecos(N, T, k)
    t = values(T, N);
    fo = 1/T;
    cosines = cos(2 * pi * k * fo .* t);
    sums = mean(cosines);
    if abs(sums) < 10 * eps(1)
        sums = 0;
    end
    plot(t, cosines);
end
