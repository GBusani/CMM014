#{
30. Sendo
H = 1+1/2+1/3+1/4+··· +1/N,
faça um programa que calcule o valor de H com N termos.
#}

clear all
clc

n = input('Digite quantos com quantos termos deseja calcular: ');
h = 0;

for i = 1:n
  h = h + 1/i;
end

display(['H = ',num2str(h), ', utilizando ',num2str(n),' termos.'])
