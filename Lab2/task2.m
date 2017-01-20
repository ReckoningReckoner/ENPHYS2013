f1 = @(x) x.^2;
f2 = @(x, y) x.^2 .* y;
f3 = @(x, y, z) x * y + z.^2;

[d1] = pder(f1, 10, 0.1);
fprintf('f1/dx => %f\n', d1);
fprintf('\n')

[d1, d2] = pder(f2, [2, 4], [0.2, 0.3], 3, 0.3);
fprintf('f2/dx => %f\n', d1);
fprintf('f2/dy => %f\n', d2);
fprintf('\n')

[d1, d2, d3] = pder(f3, 1, 0.1, 2, 0.1, 3, 0.1);
fprintf('f3/dx => %f\n', d1);
fprintf('f3/dy => %f\n', d2);
fprintf('f3/dz => %f\n', d3);
