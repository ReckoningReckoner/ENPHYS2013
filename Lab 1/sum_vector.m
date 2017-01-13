function result = sum_vector(vector)
    i = 1;
    result = 0;
    while i <= length(vector)
        result = vector(i) + result;
        i = i + 1;
    end
end

