f=[152 361 568 823 1031 1358]; % frequency [Hz];
V=[1.63 2.01 2.47 3.00 3.34 3.75]; % inductor RMS voltage [V]
I=[0.0615 0.0593 0.056 0.0512 0.0472 0.0413]; % inductor RMS current [A] dV=V*0.005+0.02; % Uncertainty in the voltage measurements [V] dI=I*0.0075+0.0002; % Uncertainty in the current measurements [A]
dV=V*0.005+0.02; % Uncertainty in the voltage measurements [V] dI=I*0.0075+0.0002; % Uncertainty in the current measurements [A]
dI=I*0.0075+0.0002; % Uncertainty in the current measurements [A]

fprintf('Part A:\n');
[L, R, dL, dR] = impedance(f, V, I, dV, dI);
fprintf('|   L: %.2f +/- %.2f mH\n', L*1000, dL*1000);
fprintf('|   R: %.2f +/- %.1f Ohms\n', R, dR);

f=[113 124 212 238 294 350 395 489]; % frequency [Hz]
V=[7.39 7.47 7.46 7.35 7.36 7.35 7.44 7.43]; % Capacitor RMS Voltage [V]
I=[2.51 2.73 4.82 5.41 6.61 7.81 8.91 11.2].*10^-3; % RMS Current [A] dV=V*0.005+0.02; % Experimental Uncertainty in Voltage Measurements [V] dI=I*0.0075+0.0002; % Uncertainty in Current [A]
dV=V*0.005+0.02; % Experimental Uncertainty in Voltage Measurements [V] dI=I*0.0075+0.0002; % Uncertainty in Current [A]
dI=I*0.0075+0.0002; % Uncertainty in Current [A]

fprintf('Part B:\n');
[C, R, dC, dR] = impedance2(f, V, I, dV, dI);
fprintf('|   R: %.1f Ohms\n', R);
fprintf('|   C: %.2e +/- %.1e microF\n', C, dC);
