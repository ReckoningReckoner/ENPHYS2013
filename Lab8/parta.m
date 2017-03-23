N = 100;
T = 1;

hold on;
k = 25;
avg = sumave(N, T, k);
fprintf('Average Value of sin(2πkf0t) over one period = %f for k = %f\n', avg, k);

avg = sumavecos(N, T, k);
fprintf('Average Value of cos(2πkf0t) over one period = %f for k = %f\n', avg, k);

k = 25;
m = 25;
avg = sumave2(N, T, k, m, 0);
fprintf('Average Value of sin(2πkf0t)*sin(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 10;
m = 30;
avg = sumave2(N, T, k, m, 0);
fprintf('Average Value of sin(2πkf0t)*sin(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 25;
m = 25;
avg = sumave2(N, T, k, m, 1);
fprintf('Average Value of cos(2πkf0t)*cos(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 10;
m = 30;
avg = sumave2(N, T, k, m, 1);
fprintf('Average Value of cos(2πkf0t)*cos(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 25;
m = 25;
avg = sumave2(N, T, k, m, 2);
fprintf('Average Value of sin(2πkf0t)*cos(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 10;
m = 30;
avg = sumave2(N, T, k, m, 2);
fprintf('Average Value of sin(2πkf0t)*cos(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 50;
m = 50;
avg = sumave2(N, T, k, m, 0);
fprintf('Average Value of sin(2πkf0t)*sin(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);

k = 50;
m = 50;
avg = sumave2(N, T, k, m, 1);
fprintf('Average Value of cos(2πkf0t)*cos(2πmf0t) over one period = %f for k = %f and m = %f\n', avg, k, m);
hold off;
