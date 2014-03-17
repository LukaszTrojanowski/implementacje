function testScript()
    %ten skrypt testuje pozosta³e skrytpy na funkcji
    %f(X,Y) = X^2 + Y^2
    funcHandle = @(x,y) x.^2 + y.^2;
    
    x0 = [-2 1];
    d = [2 1];
    disp('testing plotFunction');
    figHandle = plotFunction(funcHandle, 4, 4);
    
    disp('testing FunkcjaNaKierunku');
    % wyliczenie kierunku z dwóch punktów
    funcOnLine = FunkcjaNaKierunku(x0(1), x0(2), d, funcHandle);
    
    disp('testing ekspansjaNaPP');
    zakres_na_prostej = ekspansjaNaPP(funcOnLine, 0, 1, 2, 20)
    
    
    disp('testing plotStep');
    plotStep(figHandle, funcHandle, x0, d, zakres_na_prostej);
    
    disp('testing kontrakcja');
    [var_konr, temp_min] = kontrakcja(funcOnLine, zakres_na_prostej, 0.9, 20)
    
    disp('testing plotMinimum');
    plotMinimum(figHandle, funcOnLine, temp_min, x0, d);