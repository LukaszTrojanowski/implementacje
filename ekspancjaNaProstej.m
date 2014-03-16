function zakres = ekspancjaNaProstej(hfuncZmLambda, z0, r, alpha, N)
    %funkcja dokonuje ekspancji na prostej f zmiennej lambda
    %przy:
    % z0 - punk startowy
    % r - krok testowy
    % alpha - krok
    % N - liczba iteracji
    zakres = [0 0];
    %sparwdzenie parametrów
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
    
    %algorytm ekspansji
    Q0 = hfuncZmLambda(z0);
    Q1 = hfuncZmLambda(z0+r);
    if Q0 <= Q1
        zakres = [z0, z0+r];
        Q2 = hfuncZmLambda(z0 -r);
        if Q0 <= Q2
            zakres = [z0 - r, z0 + r];
        else
            %na kierunku w kierunku ujemnym
            Q_a = Q2;
            %z_poprz = z0 - r;
                for i = 1:1:N
                    Q_b = hfuncZmLambda(z0 - alpha^i * r);
                    if Q_a <= Q_b
                        zakres = [z0 - alpha^i * r, zakres(2)];
                        break;
                    end
                    %z_poprz = z0 - alpha^i * r;
                    Q_a = Q_b;
                end
        end
    else
       %na kierunku w kierunku dodatnim
       Q_a = Q1;
       z_poprz = z0 + r;
        for i = 1:1:N
            Q_b = hfuncZmLambda(z0 + alpha^i * r);
            if Q_a <= Q_b
                zakres = [z_poprz, z0 + alpha^i * r];
                break;
            end
            z_poprz = z0+alpha^i * r;
            Q_a = Q_b;
        end
    end
    
    
    
    
    
    
    
    