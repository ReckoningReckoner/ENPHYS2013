function [A,B,C,D]=nspline(X,Y)
    n = length(X);
    A = Y(1:end-1);
    h = X(2:end) - X(1:end-1);

    Cmat = diag([1, 2*(h(1:end-1) + h(2:end)), 1]) +...
           diag([h(1:end-1), 0], -1) +...
           diag([0, h(2:end)], 1);
    Csol = zeros(1, n);
    Csol(2:n-1) = 3.*...
           ((Y(3:end) - Y(2:end-1))./h(2:end) - ...
           (Y(2:end-1) - Y(1:end-2))./h(1:end-1));

    C = solve_matrix(Cmat, Csol')';
    D = (C(2:end) - C(1:end-1))./(3.*h);
    B = (Y(2:end) - Y(1:end-1))./h - (C(2:end) + 2.*C(1:end-1)).*h./3;
    C = C(1:end-1);
end
