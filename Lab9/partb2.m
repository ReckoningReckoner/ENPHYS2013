addpath('../Utils')
T = 2;
N = 100;

t = linspace(0, T, N);
v = pulse(N);
win = tukeywin(N)';

figure(1)
hold on;
plot(t, v);
plot(t, win);
plot(t, win.*v);
hold off;

vn=10*cos(2*pi*15.25*t); % noise signal
vtotal=v+vn;

figure(2)
vtotalwin = win .* vtotal;
[C, f] = spectrum(vtotalwin, T, N);
[Cfilter, f] = lowpass(C, f, 7);

figure(3)
hold on;
plot(t, real(cidft(Cfilter)));
plot(t, v, '--');
hold off;
