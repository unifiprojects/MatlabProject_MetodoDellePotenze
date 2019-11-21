
A = [33 16 72
    -24 -10 -57
    -8 -4 -17]

B = [15 -2 2
    1 10 -3
    -2 1 0]

display("eig(A)")
[V D] = eig(A)
display("eig(B)")
[V D] = eig(B)


lambda1 = 2.1;
lambda2 = 14;


A_shifted1 = A - lambda1*eye(3)
A_shifted2 = A - lambda2*eye(3)
B_shifted = B - lambda2*eye(3)

A_shifted1 = inv(A_shifted1);
A_shifted2 = inv(A_shifted2);
B_shifted = inv(B_shifted);

kmax = 1000;
wo = [1 1 1]';
tolla = 10^-6;
tollb = 10^-6;

% Con queste tolleranze é preciso anche A con lambda2 
% tolla = 10^-9;
% tollb = 10^-9;

[lambda, autovettore, i] = metodoPotenze(A_shifted1, wo, kmax, tolla, tollb);
1/lambda + lambda1
[lambda, autovettore, i] = metodoPotenze(A_shifted2, wo, kmax, tolla, tollb);
1/lambda + lambda2
[lambda, autovettore, i] = metodoPotenze(B_shifted, wo, kmax, tolla, tollb);
1/lambda + lambda2
