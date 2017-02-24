function AB=Elim(AB)
    AB = pivot(AB);
    [height, ~] = size(AB);
    for i = 2:1:height
        factor = -1 * AB(i, 1)/AB(1, 1);
        AB(i, :) = AB(1, :) * factor + AB(i, :);
    end
end
