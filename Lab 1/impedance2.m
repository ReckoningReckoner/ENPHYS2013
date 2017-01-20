function [C, R, dC, dR] = impedance2(f, V, I, dV, dI)
    Zsq = Z2(V, I);
    dZSq=((Z2(V+dV,I)-Z2(V,I)).^2+(Z2(V,I+dI)-Z2(V,I)).^2).^0.5;
    omega_sq_inv = ((2*pi).* f).^-2;
    [Rsq, Csq, dRsq, dCsq] = wregression(omega_sq_inv, Zsq, dZSq);

    C = sqrt(Csq)^-1;
    dC = abs(1/sqrt(Csq + dCsq) - 1/sqrt(Csq));

    R = sqrt(Rsq);
    dR = abs(sqrt(Rsq + dRsq) - sqrt(Rsq));

    hold on;
    title('Capacitor circuit');
    errorbar(omega_sq_inv, Zsq, dZSq, '*');
    plot(omega_sq_inv, R^2 + omega_sq_inv * Csq);
    hold off;
end
