global R K MU D

R = 0.025;
K = 0.95e6;
MU = 4e-7 * pi;
D = 0.05;

x1 = 0.01;
y1 = 0.02;
z1 = 0.03;

fprintf('Task 1B:\n')
[argx, argy, argz] = args(x1, y1, z1, pi/6, 0.05);
fprintf('argx = %.4e\n', argx);
fprintf('argy = %.4e\n', argy);
fprintf('argz = %.4e\n', argz);

fprintf('\n');

fprintf('Task 2B:\n');
[Bx, By, Bz] = B(x1, y1, z1);
fprintf('Bx = %.4e\n', Bx);
fprintf('By = %.4e\n', By);
fprintf('Bz = %.4e\n', Bz);

%% Generate graph
[X,Z] = meshgrid(-0.05:0.01:0.05,-.05:.01:.1);
[Nr,Nc] = size(X);
for n=1:Nr
    for m=1:Nc 
        [Bx(n,m),By(n,m),Bz(n,m)]=B(X(n,m),0,Z(n,m));
    end
end

quiver(X,Z,Bx,Bz);
xlabel('x-axis');
ylabel('z-axis');
axis equal;
