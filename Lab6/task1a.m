close all;

grid_size = 41;
V = zeros(grid_size, grid_size);

plate1 = [11, 26; 31, 26];
V(plate1(1, 1):plate1(2, 1), plate1(1, 2)) = 10; % Top capacitor

plate2 = [11, 16; 31, 16];
V(plate2(1, 1):plate2(2, 1), plate2(1, 2)) = -10; % Bottom capacitor


for i=1:100
    for x=2:1:grid_size-1
        for y=2:1:grid_size-1
            if (plate1(1, 1) <= x &&  x <= plate1(2, 1)) &&...
               (y == plate1(1, 2) || y == plate2(1, 2))  %% Make sure you're not altering plates
                continue;
            else
                V(x, y) = 1/4*(V(x-1,y) + V(x+1,y) + V(x,y-1) + V(x,y+1));
            end
        end
    end
end

hold on;
contour(V', 11)
[Ex, Ey] = gradient(V');
quiver(-Ex, -Ey)
hold off;
