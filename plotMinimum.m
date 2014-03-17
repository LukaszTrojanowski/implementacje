function plotMinimum(fig_handle, funcHandle, lambda_min, x0, d)
    nor_d = (d(1)^2+d(2)^2)^(0.5);
    P1 = [x0(1)+lambda_min*d(1)/nor_d, x0(2)+lambda_min*d(2)/nor_d];
    
    figure(fig_handle);
    hold on;
    
    plot3(P1(1), P1(2), funcHandle(lambda_min), 'b*', 'LineWidth', 2);