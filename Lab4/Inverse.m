function Ainv=Inverse(A)
    [height, width] = size(A);
    I = eye(height);
    Ainv = ones(height, width);
    for i=1:1:width
        AI = [A, I(:, i)];
        Ainv(:, i) = BackSubs(UpTri(AI));
    end
end
