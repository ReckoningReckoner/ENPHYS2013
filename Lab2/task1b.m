f=@(x,y) (10.^-((x.^2)+y.^2)) .* cos(pi .* x-pi/3);

col = 0;
for x=-1.0:0.1:1
    col=col + 1;
    row=0;
    for y=-1:0.1:1
        row=row+1;
        XX(row,col) = x;
        YY(row,col) = y; % array storing the Y-coord at each grid point
        ZZ(row,col) = f(x,y); % array storing the value of the function
    end
end

gradient(XX, YY, f);
