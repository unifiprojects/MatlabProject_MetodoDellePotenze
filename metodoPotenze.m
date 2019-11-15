function [lambda, autovettore, i] = metodoPotenze(A, w0, kmax, tolla, tollb)
% [lambda, autovettore, i] = metodoPotenze(A, w, kmax, tolla, tollb)
% Restituisce l'autovalore dominante della matrice A, l'autovettore associato 
% e il numero di iterazioni necessarie per calcolarlo.
%
% Input:
%    - A: matrice utilizzata per il calcolo
%    - w0: vettore di partenza
%    - kmax: numero massimo di iterazioni
%    - tolla, tollb: tolleranze
% Output:
%    - lambda: autovalore dominante
%    - autovettore: autovettore associato a lambda
%    - i: numero di iterazioni effettuate
%
    [m,n] = size(A);
    if m ~= n
        error('La matrice deve essere quadrata.');
    end
    if w0(:)==0
        error('Il vettore x0 non può avere esclusivamente elementi nulli.');
    end

    w = w0/norm(w0);
    lambda = inf;
    for i = 1:kmax
        lambda0 = lambda;
        v = A*w;
        lambda = w'*v;
        autovettore = w;
        err = abs(lambda-lambda0);
        if err < (tolla + tollb*abs(lambda))
            break;
        end
        w = v/norm(v);
    end
    if err > (tolla + tollb*abs(lambda))
        warning('la tolleranza richiesta non è stata raggiunta.');
    end
end
