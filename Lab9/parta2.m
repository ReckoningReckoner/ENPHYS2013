addpath('../Utils')
T = 2;
N = 100;
v = pulse(N);

figure(1)
spectrum(v, T, N);
figure(2)
fder(v, T, N)
