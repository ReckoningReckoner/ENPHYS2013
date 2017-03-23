t = values(1, 7)
vs=[9 3 5 7 8 1 3];
f0 = 1;

V_ave=mean(vs);

a0 = 2*mean(vs)

a1 = 2 * mean(vs.*cos(2*pi*f0*t))
b1 = 2 * mean(vs.*sin(2*pi*f0*t))

a2 = 2 * mean(vs.*cos(2*pi*2*f0*t))
b2 = 2 * mean(vs.*sin(2*pi*2*f0*t))

a3 = 2 * mean(vs.*cos(2*pi*3*f0*t))
b3 = 2 * mean(vs.*sin(2*pi*3*f0*t))
