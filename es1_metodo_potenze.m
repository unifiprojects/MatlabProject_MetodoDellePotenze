clc
clear
A = [1 -1 2
     -2 0 5
     6 -3 6];
     
B = [8 -1 5
     -4 4 -2
     18 -5 -7];
 
C = [];

[V D] = eig(A)
[V D] = eig(B)

kmax = 1000;
wo = [1 1 1]';
tolla = 10^-6;
tollb = 10^-6;
[lambda, autovettore, i] = metodoPotenze(A, wo, kmax, tolla, tollb)
[lambda, autovettore, i] = metodoPotenze(B, wo, kmax, tolla, tollb)