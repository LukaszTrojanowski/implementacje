function hNewFunc = FunkcjaNaKierunku(x0, y0, d, hOldFunc)
    %funkcja zwraca handle do funkcji jednej zmiennej na kierunku d
    %przechodz¹cej przez punkt x0, y0
    hNewFunc = @(lambda) hOldFunc(lambda*d(1)+x0, lambda*d(2)+y0);
    %plot(-2:0.1:2, hNewFunc(-2:0.1:2)); %wyswietla now¹ funkcjê na zakresie od -2 do 2 od punktu startowego
end