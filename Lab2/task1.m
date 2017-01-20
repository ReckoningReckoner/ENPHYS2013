f = @(x) 10 * sin(x);
x = 0:pi/100:2*pi;
h = pi/2;

factor = 10;

h_optimal = -1;
min_sum = -1;
hold on;
while factor <= 10000
    h = h/factor;
    diff = der(f, x, h) - 10 * cos(x);
    plot(x, diff);

    sums = sum(abs(diff));
    if min_sum == -1 || min_sum > sums
        min_sum = sums;
        h_optimal = h;
    end

    factor = factor * 10;
end

legend('show')
fprintf('The optimal h value is %f\n', h_optimal);
