function fder(v, T, N)
    C = cdft(v);

    f0 = 1/T;
    kmax = floor(N/2);
    if mod(N, 2) ~= 0
        f = f0 * [0:1:kmax, -kmax:1:-1];
    else
        f = f0 * [0:1:kmax, -kmax+1:1:-1];
    end
    vplot = cidft(C);
    hold off;
    vder = cidft(1j * 2 * pi .* f .* C);
    times = linspace(0, T, N);
    hold on;
    plot(times, vplot, '-')
    plot(times, real(vder), '--')
    hold off;
end
