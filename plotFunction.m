% metoda ekspancji
function figHandle = plotFunction(funchandle, a , b)

    figHandle = figure();
    [X,Y] = meshgrid(-a:.1:a, -b:.1:b);
    Z = funchandle(X, Y);
    surf(X,Y,Z)

    colormap gray;

end % koniec funkcji