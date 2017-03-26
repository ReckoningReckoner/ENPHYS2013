addpath('../Utils')
T = 2;
N = 100;

t = linspace(0, T, N);
v = pulse(N);
vn=10*cos(2*pi*15*t); % noise signal
vtotal=v+vn;

figure(1)
[C, f] = spectrum(vtotal, T, N);

[Cfilter, f] = lowpass(C, f, 7);

figure(2)
hold on;
plot(t, real(cidft(Cfilter)));
plot(t, v, '--')
hold off;
