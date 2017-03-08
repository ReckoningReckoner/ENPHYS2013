function P=least_sq(X, Y, M)
    mat = zeros(M + 1);
    sol = ones(1, M+1);


    for i=0:1:M
        for j=i:1:i+M
            mat(i+1, j+1-i) = sum(X.^j);
        end
    end

    for i=0:1:M
        sol(i + 1) = sum(X.^i .* Y);
    end
    P=solve_matrix(mat, sol')';
end
