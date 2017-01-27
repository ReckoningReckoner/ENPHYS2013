function area = trap_integral(vx, vy)
    area = 0;
    for i=1:1:length(vx) - 1
        step_size = vx(i + 1) - vx(i);
        darea = (vy(i + 1) + vy(i))/2 * step_size;
        area = darea + area;
    end
    area = -1 * area;
end
