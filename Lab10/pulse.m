function [v] = pulse(N)
n=(0:N-1)/N;
v=sin(2*pi*8*n).*(0.5+0.5*cos(2*pi*n+pi)).^3;
end
