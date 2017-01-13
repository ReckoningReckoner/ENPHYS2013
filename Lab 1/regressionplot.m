function regressionplot()
    x = [0,1,2,3,4,5]; 
    y = [0.3, 1, 2.2, 3.7, 4, 5.9];
    dy = [0.1, 0.2, 0.3, 0.4, 0.5, 0.8];
    [A, B, dA, dB] = wregression(x, y, dy);

    hold on;
    errorbar(x, y, dy, '.');
    plot(x, B * x + A);
    xlabel('x-axis');
    ylabel('y-axis');
    title('Sample Weighted Linear Regression Plot');
    hold off;
end

