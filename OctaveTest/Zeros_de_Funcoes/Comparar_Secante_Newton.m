clear all
clc

x0 = 0.5;
x1 = pi/4;
eps_a = 10^-10;
eps_r  = 10^-10;
eps_d= 10^-10;
iter_max = 500;




display('Convergência do Método da secante:');
display('       ');
 [x_secante,iter_secante] = secante(@f,x0,x1,eps_a,eps_r,iter_max);

 display('       ');
 display('       ');
display('Convergência do Método de Newton:');
display('       ');
 [x_Newton,iter_Newton] = newton(@f,@df,x1,eps_a,eps_r,eps_d,iter_max);
