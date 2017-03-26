T = 2;
N = 100;

v = pulse(N);
C = cdft(v);

f0 = 1/T;
kmax = floor(N/2);
if mod(N, 2) ~= 0
    f = f0 * [0:1:kmax, -kmax:1:-1];
else
    f = f0 * [0:1:kmax, -kmax+1:1:-1];
end

figure(1)
plot(f, abs(C), '*')

figure(2)
vplot = cidft(C);
hold off;
vder = cidft(1j * 2 * pi .* f .* C);
times = linspace(0, T, N);
hold on;
plot(times, vplot, '-')
plot(times, real(vder), '--')
hold off;
