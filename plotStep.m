function plotStep(figHandle,funcHandle, x0, d)
    % wyswietla kroki algorytmu na wykresie 3d
    %x0 to punkt przez który przechodzi prosta
    %d kierunek w którym skierowana jest prosta.
    figure(figHandle);
    hold on;
    X = [-2:0.1:2];
    Y = X.*(d(2)/d(1))+(x0(2)-(d(2)/d(1))*x0(1));
    plot3(X, Y, funcHandle(X,Y), 'r' , 'LineWidth', 2);
    