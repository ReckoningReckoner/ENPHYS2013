function [C, f]=spectrum(v, T, N)
    C = cdft(v);

    f0 = 1/T;
    kmax = floor(N/2);
    if mod(N, 2) ~= 0
        f = f0 * [0:1:kmax, -kmax:1:-1];
    else
        f = f0 * [0:1:kmax, -kmax+1:1:-1];
    end

    hold on;
    plot(f, abs(C), '*')
    hold off;
end
