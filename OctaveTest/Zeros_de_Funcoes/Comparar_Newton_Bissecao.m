clear all
clc

a = 0;
b = 2;
tol = 10^-14;

#[x_B,iterB] = bissecao(@f,a,b,tol)
#ER = abs(x_B - sqrt(2))/sqrt(2)

x0 = 0.5
[x_N,iterN] = newton1(@f,@df,1,tol)

Teste = f(x_N)
