function C=cdft(v)
    N = length(v);
    n = 1:N; % sample vector
    % a = zeros(1, N);
    % b = zeros(1, N);
    % C = zeros(1, N);
    for k=1:N
        a(k)=(2/N)*sum(v.*cos(2*pi*(k-1)*(n-1)/N)); % a-coefficients 
        b(k)=(2/N)*sum(v.*sin(2*pi*(k-1)*(n-1)/N)); % b-coefficients
        C(k)=(a(k)-1j*b(k))/2; % c-coefficients
    end % for k
end
