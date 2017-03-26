function V=cidft(C)
    N=length(C);
    k=1:N;
    V = zeros(1, N);
    for n=1:N
        V(n)=sum(C.*exp(1j*2*pi*(k-1)*(n-1)/N));
    end
end
