function P = polyinterp(X, Y)
    n = length(Y);
    A = ones(n, n);
    for i=1:length(X)
        for j=0:1:n-1
            A(i, j+1) = X(i)^j;
        end
    end
    P = solve_matrix(A, Y')';
end
