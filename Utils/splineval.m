function [xval, yval]=splineval(X, A, B, C, D)
    ALLX = [];
    ALLY = [];

    N = 10;

    xval = zeros(length(X) - 1, N);
    for index=1:1:length(X)-1
        xval(index, :) = linspace(X(index), X(index + 1), N);
    end

    [height, width] = size(xval)

    for i=1:1:height
        for j=1:1:length(xval(i, :))
            xj = xval(i, j) - xval(i, 1);
            yval = A(i) + B(i).*xj + C(i).*xj.^2 + D(i).*xj.^3;
            ALLY = [ALLY, yval];
        end

        ALLX = [ALLX, xval(i, :)];
    end

    plot(ALLX, ALLY);
end
