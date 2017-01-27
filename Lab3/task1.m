D = importdata('./HysteresisIron-orig.csv');
vx = D.data(:,2);
vy = D.data(:,3);

area = trap_integral(vx, vy);
fprintf('The area of the integral is %.2e\n', area)
