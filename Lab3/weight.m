function w = weight(z)
    w = ones(z,1);
    w(2:1:z-1) = 2;
    w(2:2:z-1) = 4;
end
