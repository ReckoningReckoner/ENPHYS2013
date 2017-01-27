function val = err(t)
    f = @(x) exp(-x.^2./2);
    val = 1/sqrt(2 * pi) * simpson_integral(f, -t, t, 20);
end
