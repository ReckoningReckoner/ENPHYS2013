function AB=pivot(AB)
    [height, ~] = size(AB);
    local_max = abs(AB(1, 1));
    max_index = 1;
    for i=2:height
        first_val = abs(AB(i, 1));
        if local_max < first_val
            local_max = first_val;
            max_index = i;
        end
    end

    if max_index ~= 1
        temp = AB(max_index, :);
        AB(max_index, :) = AB(1, :);
        AB(1, :) = temp;
    end
end
