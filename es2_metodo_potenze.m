clc
clear
A = [1 -1 2
     -2 0 5
     6 -3 6];
 
B = [8 -1 5
     -4 4 -2
     18 -5 -7];
 
y = [1 2 3 4 5]';
C = [y.^4 y.^3 y.^2 y.^1 y.^0];

[V D] = eig(A);
[V D] = eig(B);
[V D] = eig(C);

A = inv(A);
B = inv(B);
C = inv(C);

kmax = 1000;
wo = [1 1 1]';
tolla = 10^-6;
tollb = 10^-6;

[lambda, autovettore, i] = metodoPotenze(A, wo, kmax, tolla, tollb);
1/lambda
[lambda, autovettore, i] = metodoPotenze(B, wo, kmax, tolla, tollb);
1/lambda
wo = [1 1 1 1 1]';
[lambda, autovettore, i] = metodoPotenze(C, wo, kmax, tolla, tollb);
1/lambda