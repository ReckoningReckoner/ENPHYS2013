function val = double_simpson_integral(Ntheta, Nphi, atheta, aphi)
    fphi = @(phi) sin(phi);
    ftheta = @(theta) 10 * cos(theta);

    inner_integral = simpson_integral(ftheta, 0, atheta, Ntheta);
    outer_integral = simpson_integral(fphi, 0, aphi, Nphi);

    val = inner_integral * outer_integral;
end
