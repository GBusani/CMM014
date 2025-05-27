clear all
clc

x0 = 0;
eps_a = 10^-5;
eps_r  = 10^-5;
eps_d= 10^-5;
iter_max = 8;

 [x1,iter] = newton(@f,@df,x0,eps_a,eps_r,eps_d,iter_max);

 display([' x* = ',num2str(x1) ])
 display(['f(x*) = ',num2str(f(x1)) ])
 display(['número de iterações = ',num2str(iter) ])
 %ER = abs(x1 - sqrt(2))/sqrt(2);
%display([' Erro Relativo = ',num2str(ER) ])


