function [zakres, z1] = zlotyPodzial(hFunkZmLambda, z, N, eps)
    %funkcja dokonuje zaw�enia obszaru poszukiwa� minimum
    %przy pomocy metody z�otego podzia�u
    %dane s�:
    %N - maksymalna ilo�� iteracji
    %z - przedzia� pocz�tkowy poszukiwa�
    %eps - wzgl�dny b��d wyznaczenia minimum
    
    % dodaj sprawdzenie warunk�w N i eps !!!
    
    
    
    zakres = z;
    Q_a = hFunkZmLambda(z(1));
    Q_b = hFunkZmLambda(z(2));
    tau = 0.618;
    zd = z(1);
    zg = z(2)
    z1 = tau* zd + (1-tau)*zg;
    Q1 = hFunkZmLambda(z1);
    
    if N < 1
        S = sprintf('error: Niepoprawna wartosc N.');
        disp(S);
        return;
    elseif eps <= 0
        S = sprintf('error: Niepoprawna wartosc eps.');
        disp(S);
        return;
    end
        
    for i = 1:1:N
        z2 = z(1) + z(2) - z1;
        Q2 = hFunkZmLambda(z2);
        
        if Q1 > Q2
            zd = z1;
            z1 = z2;
            Q1 = Q2;
        else
            zg = z2;
        end
        
        if (zg-zd)/z1 < eps
            break;
        end
    end   
    