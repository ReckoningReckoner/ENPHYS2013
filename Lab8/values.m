function t=values(T, N)
    t = ones(1, N);
    interval = T/N;
    for i=0:1:N-1
        t(i + 1) = interval * i;
    end
end
