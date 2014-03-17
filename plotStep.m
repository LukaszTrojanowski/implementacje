function plotStep(figHandle,funcHandle, x0, d, zakres_na_prostej)
    % wyswietla kroki algorytmu na wykresie 3d
    %x0 to punkt przez który przechodzi prosta
    %d kierunek w którym skierowana jest prosta.
    nor_d = (d(1)^2+d(2)^2)^(0.5);
    P1 = [x0(1)+zakres_na_prostej(1)*d(1)/nor_d, x0(2)+zakres_na_prostej(1)*d(2)/nor_d];
    P2 = [x0(1)+zakres_na_prostej(2)*d(1)/nor_d, x0(2)+zakres_na_prostej(2)*d(2)/nor_d];
    
    figure(figHandle);
    hold on;
    X = [P1(1):0.1:P2(1)];
    d = [P2(1)-P1(1), P2(2) - P1(2)];
    Y = X.*(d(2)/d(1))+(P1(2)-(d(2)/d(1))*P1(1)); 
    plot3(X, Y, funcHandle(X,Y), 'r' , 'LineWidth', 2);
    