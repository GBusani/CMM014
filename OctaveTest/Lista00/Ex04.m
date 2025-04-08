#{
4. Escreva um programa que tem como entrada 10 números e imprime na tela quantos são pares e quantos são
ímpares.
#}
clear all
clc

x = [1 2 3 4 5 6 7 8 9 20];

num_pares = [];
num_impares = [];

for i = 1:10
  if mod(x(i),2) == 0
    num_pares = [num_pares, x(i)];
  else
    num_impares = [num_impares, x(i)];
  endif

end

num_pares
num_impares
