function [L, R, dL, dR] = impedance(f, V, I, dV, dI)
    Zsq = Z2(V, I);
    dZSq=((Z2(V+dV,I)-Z2(V,I)).^2+(Z2(V,I+dI)-Z2(V,I)).^2).^0.5;
    omega_sq = ((2*pi).* f).^2;
    [Rsq, Lsq, dRsq, dLsq] = wregression(omega_sq, Zsq, dZSq);

    L = sqrt(Lsq);
    R = sqrt(Rsq);
    dR = abs(sqrt(Rsq + dRsq) - sqrt(Rsq));
    dL = abs(sqrt(Lsq + dLsq) - sqrt(Lsq));
    
    hold on;
    title('Inductor circuit');
    errorbar(omega_sq, Zsq, dZSq, '*');
    plot(omega_sq, R^2 + omega_sq*Lsq);
    hold off;
end
