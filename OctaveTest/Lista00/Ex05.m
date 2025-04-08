#{
5. Escreva um programa que tem como entrada 10 números e imprima na tela quantos estão no intervalo [0,10] e
quantos estão fora do intervalo.
#}
clear all
clc

v = [ 1 2 3 4 5 9 11 60 77 96]


nums_in = [];
nums_out = [];

for i = 1:10
  if v(i) < 0 | v(i) > 10
    nums_out = [nums_out, v(i)];
  else
    nums_in = [nums_in, v(i)];
  endif
end

display( ['Os números dentro do intervalo são: ',num2str(nums_in)])
display( ['Os números fora do intervalo são: ',num2str(nums_out)])
