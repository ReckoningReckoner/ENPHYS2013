function [A, B, dA, dB] = wregression(x, y, dy)
w = dy.^-2;
sum_w = sum(w);
sum_wx = sum(w.*x);
sum_wy = sum(w.*y);
sum_wxy = sum(w.*x.*y);
sum_wx2 = sum(w.*x.^2);
D = sum_w * sum_wx2 - sum_wx^2;

dA = sqrt(sum_wx2/D)
dB = sqrt(sum_w/D)
A = (sum_wx2 * sum_wy - sum_wx * sum_wxy)/D
B = (sum_w * sum_wxy - sum_wx * sum_wy)/D
end