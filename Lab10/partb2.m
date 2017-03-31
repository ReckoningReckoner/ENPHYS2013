N = 100;
f0 = 0.04;
kmax = floor(N/2);
if mod(N, 2) ~= 0
    f = f0 * [0:kmax, -kmax:-1];
else
    f = f0 * [0:kmax, -kmax+1:-1];
end

T = 1/f0;
t = (0:1:N-1) .* T/N;

H = zeros(1, length(f));
for i=1:1:length(f)
    L = 0.2;
    C = 0.2;
    Zr = 0.2; % Resistor
    Zl = L * 1j * 2 * pi .* f(i);
    Zc = 1./(C * 1j * 2 * pi .* f(i));
    ABCD = SS(Zr) * SS(Zl) * PP(Zc);
    H(i) = 1./ABCD(1, 1);
end

hold on;
plot(t, real(cidft(H)))
xlabel('Time [s]')
ylabel('Amplitude [V]')
title('Dampening of RLC Circuit')
hold off;
