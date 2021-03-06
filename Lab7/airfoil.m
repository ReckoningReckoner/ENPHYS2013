function P=airfoil(x, y)
    L = 1;
    x = x./L;
    mat = [sum(x.^1), sum(x.^1.5), sum(x.^2.5), sum(x.^3.5), sum(x.^4.5);...
           sum(x.^0.5), sum(x.^1), sum(x.^2), sum(x.^3), sum(x.^4);...
           sum(x.^2.5), sum(x.^3), sum(x.^4), sum(x.^5), sum(x.^6);...
           sum(x.^3.5), sum(x.^4), sum(x.^5), sum(x.^6), sum(x.^7);...
           sum(x.^4.5), sum(x.^5), sum(x.^6), sum(x.^7), sum(x.^8)];
    sol = [sum(y .* x.^0.5);...
           sum(y .* x.^0);...
           sum(y .* x.^2);...
           sum(y .* x.^3);...
           sum(y .* x.^4)];

    P = solve_matrix(mat, sol)';

end
