function test
% generates a sampled pulse and interpolates using a F. series
clc
N=20; % Number of samples
[t,v]=pulse(N); % Generate N samples of a pulse and return the time vector t %and samples v
[tt,vv]=Fseries(t,v); % Interpolate using a Fourier Series (100X sampling)
figure(1)
plot(t,v,'*',tt,vv);
xlabel('Time [s]');
ylabel('Pulse Amplitude [V]');
legend('Samples','F.Series')
[tt,vvv]=pulse(100*N); % Calculate actual values of signal (100X sampling)
figure(2)
err=vvv-vv; % diff between the actual values and the Fourier series
plot(tt,err); xlabel('Time [s]'); ylabel('Error in F. Series Prediction [V]')
end % function test
