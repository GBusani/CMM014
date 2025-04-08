#{
37. Considere a função u(x,t) = exp(−(x − t)^2). Uma das maneiras de representar o gráfico desta função é fixar t = t0,
daí u(x,t0) é uma função de uma variável real x cujo gráfico está no plano. Plot o gráfico de u(x,t0) para t0 = 0,1,2
e 3.
#}

clear all
clc
close all

incremento = 1;
n = 1:incremento:100;
j = 0;
for i = 1:length(n)
  u = exp_u(n(i), j)
endfor

