addpath('../Utils/')

N = 400;
T = 2;

t = 0:1:N-1 * T/N;
vn=10*cos(2*pi*90*t); % noise signal
vtotal=pulse(N)+vn;
win=tukeywin(N)';
vs=vtotal.*win;

cdft(vs);

f0 = 1/T;
kmax = floor(N/2);
if mod(N, 2) ~= 0
    f = f0 * [0:1:kmax, -kmax:1:-1];
else
    f = f0 * [0:1:kmax, -kmax+1:1:-1];
end

H = lowpass(f);

logH=20*log10(abs(H)/max(abs(H)));
plot(f,logH,'*');

