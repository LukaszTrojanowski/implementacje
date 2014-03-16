function zakres = ekspansjaNaPP(hfuncZmLambda, z0, r, alpha, N)
    %funkcja dokonuje ekspancji na pó³ prostej funkcji zmiennej lambda
    %przy:
    % z0 - punk startowy
    % r - krok testowy
    % alpha - krok
    % N - liczba iteracji
    zakres = [0 0];
    %sprawdzenie parametrów
    if alpha <= 1
        S = sprintf('error: niepoprawna wartosc alpha!');
        disp(S);
        return;
    end
    if r <= 0
        S = sprint('error: niepoprawna wartosc r!');
        disp(S);
        return;
    end
    
    %algorytm ekspancji
    Q0 = hfuncZmLambda(z0);
    Q1 = hfuncZmLambda(z0+r);
    if Q0 <= Q1
        zakres = [z0, z0+r];
    else
    Q_a = Q1;
    z_poprz = z0 + r;
        for i = 1:1:N
            Q_b = hfuncZmLambda(z0 + alpha^i * r);
            if Q_a <= Q_b
                zakres = [z_poprz, z0 + alpha^i * r];
                break;
            end
            z_poprz = z0+alpha^i * r;              
        end
    end
    
    


end
    