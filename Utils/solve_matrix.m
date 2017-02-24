function X=solve_matrix(A, B)
    X = BackSubs(UpTri([A, B]));
end
