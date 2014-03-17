function [zakres, przyb_min] = kontrakcja(hfuncZmLambda, z, beta, N)
    %funkcja dokonuje zaw�enia obszaru poszukiwa� minimum
    %przy danym:
    %hfuncZmLamda - funkcja na prostej
    %z - pocz�tkowy zakres poszukiwa�
    %beta - wsp�czynnik kontrakcji
    %N - maksymalna ilo�� krok�w
    zakres = z;
    przyb_min = z(1);
    Q0 = hfuncZmLambda(z(1));
    Q1 = hfuncZmLambda(z(2));
    %sprawdzenie poprawno�ci zakresu wyj�ciowego
    if Q0 > Q1
        S = sprintf('error: Q(z0) > Q(z1)');
        disp(S);
        return;
    end
    dlugoscZ = z(2)-z(1);
    for i = 1:1:N
        z_i = z(1) + beta^i * dlugoscZ;
        Q_i = hfuncZmLambda(z_i);
        if Q_i < Q0
            zakres = [z(1), z0 + beta^(i-1) * dlugoscZ];
            przyb_min = z_i;
            disp('haha');
            return;
        end
    end
