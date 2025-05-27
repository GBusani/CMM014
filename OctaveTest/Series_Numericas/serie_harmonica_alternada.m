% Codigo para aproximar o valor
% da serie harmonica alternada
clear all
clc

n = 1999; % Este valor assegura  uma aproximacao com 3 casas decimas exatas

s = 0;

for k = 1:1:n
  s = s+ (-1)^(k+1)/k;

end
s
s_ex = log(2);
Teste = abs(s - s_ex) % Este valor deve ser menor ou igual a 0.5*10^-3

