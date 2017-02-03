function triangle = UpTri(AB)
    [height, width] = size(AB);
    for i=1:1:height
        AB(i:height, i:width) = Elim(AB(i:height, i:width));
    end
    triangle = AB;
end
