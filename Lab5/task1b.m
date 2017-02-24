addpath('../Utils/');


t=0:0.02:0.18;
vs=[0.976,0.329,-0.279,-0.408,-0.141,0.144,0.143,0.009,-0.072,-0.047];
dvs = 0.03;
[a, f] = fit(vs, t);

da = 0;
df = 0;
for i=1:1:length(vs)
    old_vs = vs(i);
    vs(i) = vs(i) + dvs;


    [anew, fnew] = fit(vs, t);

    da = da + (anew - a)^2;
    df = df + (fnew - f)^2;

    vs(i) = old_vs;
end
da = sqrt(da);
df = sqrt(df);
fprintf('a is %.3g +/- %.1g\n', a, da);
fprintf('f is %.2g +/- %.1g\n', f, df);

hold on;
errorbar(t, vs, dvs*ones(size(t)), '*')
ts = linspace(t(1), t(end));
plot(ts, exp(-a.*ts).*cos(2*pi.*f.*ts))
xlabel('Time [s]')
ylabel('Pulse Amplitude [V]')
legend('Actual Data', 'Line of best fit')
hold off;
