function int = simpson_integral(f, a, b, N)
    int = 0;
    h = (b - a)/(2 * N);
    for x = (a + h : 2 * h : b - h)
        int = int + (f(x - h) + 4 .* f(x) + f(x + h)) .* h./3;
    end
end
