function [t,v] = pulse(N)
% generates N samples of a pulse v and the corresponding time vector t
t=(0:N-1)/N;
v=sin(2*pi*4*t).*(0.5+0.5*cos(2*pi*t+pi)).^3;
end
