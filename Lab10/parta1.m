addpath('../Utils/')

T = 2;
N = 400;

t = (0:1:N-1) .* T/N;
vn=10*cos(2*pi*90*t); % noise signal
vtotal=pulse(N)+vn;
win=tukeywin(N)';
vtotal=vtotal.*win;

vs = cdft(vtotal);

f0 = 1/T;
kmax = floor(N/2);
if mod(N, 2) ~= 0
    f = f0 * [0:kmax, -kmax:-1];
else
    f = f0 * [0:kmax, -kmax+1:-1];
end

H = lowpass(f);

logH=20*log10(abs(H)/max(abs(H)));
hold on;
figure
plot(f,logH,'*');
title('Transfer function for Butterworth filter')
xlabel('frequency [Hz]')
ylabel('db')
hold off;

cutoff = 6;
fprintf('The cutoff frequency is %d Hz\n', cutoff);

Vl = cidft(vs .* H);

hold on;
figure
plot(t, real(Vl));
xlabel('Time [ms]')
ylabel('frequency [Hz]')
hold off;
