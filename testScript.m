function testScript()
    %ten skrypt testuje pozosta³e skrytpy na funkcji
    %f(X,Y) = X^2 + Y^2
    funcHandle = @(x,y) x.^2 + y.^2;
    
    disp('testing plotFunction');
    figHandle = plotFunction(funcHandle, 2, 2);
    
    disp('testing plotStep');
    plotStep(figHandle, funcHandle, [0 1], [1 1]);
    
    