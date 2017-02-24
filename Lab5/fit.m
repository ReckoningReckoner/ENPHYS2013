function [a, f]=fit(vs, t)
    F = @(a, f)...
        sum(-2.*t.*exp(-a.*t) .* cos(2.*pi.*f.*t)...
            .* (exp(-a.*t) .* cos(2.*pi.*f.*t) - vs));

    G = @(a, f)...
        sum(-4.*pi.*t.*(-vs + exp(-a.*t).*...
            cos(2.*pi.*f.*t)).*exp(-a.*t).*...
            sin(2.*pi.*f.*t));

    a = 10; % Initial Guess
    f = 10; % Initial Guess
    precision = 0.00001;
    for i=1:1:100
        [dfda, dfdw] = pder(F, a, a/1e4, f, f/1e4);
        [dgda, dgdw] = pder(G, a, a/1e4, f, f/1e4);
        A = [dfda, dfdw; dgda, dgdw];
        B = [-F(a, f); -G(a, f)];
        X = solve_matrix(A, B);

        if abs(X(1)) <= precision && abs(X(2)) <= precision
            break
        else
            a = a + X(1);
            f = f + X(2);
        end
    end
end
