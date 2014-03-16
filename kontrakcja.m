function [zakres, przyb_min] = kontrakcja(hfuncZmLambda, z, beta, N)
    %funkcja dokonuje zawê¿enia obszaru poszukiwañ minimum
    %przy danym:
    %hfuncZmLamda - funkcja na prostej
    %z - pocz¹tkowy zakres poszukiwañ
    %beta - wspó³czynnik kontrakcji
    %N - maksymalna iloœæ kroków
    zakres = z;
    przyb_min = z(1);
    Q0 = hfuncZmLambda(z(1));
    Q1 = hfuncZmLambda(z(2));
    %sprawdzenie poprawnoœci zakresu wyjœciowego
    if Q0 > Q1
        S = sprintf('error: Q(z0) > Q(z1)');
        disp(S);
        return;
    end
    dlugoscZ = abs(z(1)-z(2));
    for i = 1:1:N
        z_i = z0 + beta^i * dlugoscZ;
        if hfuncZmLambda(z_i) < Q0
            zakres = [z(1), z0 + beta^(i-1) * dlugoscZ];
            przyb_min = z_i;
            return;
        end
    end
