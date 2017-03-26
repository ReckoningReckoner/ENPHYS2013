function [a, b] = dft(v)
    N = length(v);
    if (N == 0)
        a = 0;
        b = 0;
        return;
    end

    kmax = floor(N/2);
    a = zeros(1, kmax + 1);
    b = zeros(1, kmax + 1);

    f0t = (0:1:N-1)/N;
    for k=0:1:kmax
        a(k+1) = 2*mean(v.*cos(2*k*pi*f0t));
        b(k+1) = 2*mean(v.*sin(2*k*pi*f0t));
    end
end
