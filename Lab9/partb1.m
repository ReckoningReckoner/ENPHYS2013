addpath('../Utils')
T = 2;
N = 1000;
tstep = T/N;

v = pulse(N);

trange=zeros(1, length(v));
trange(1)=0;
for i=2:length(v)
    trange(i)=trange(i-1)+tstep;
end
t=trange;

vn=10*cos(2*pi*15*t); % noise signal
vtotal=v+vn;


figure(1)
[C, f] = spectrum(vtotal, T, N);
[Cfilter, f] = lowpass(C, f, 7);

vfilter = cidft(Cfilter);

figure(2)
hold on;
plot(t, real(cidft(Cfilter)));
plot(t, v, '--');
hold off;

