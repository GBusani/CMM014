#{
Crie uma função que tenha como entrada 'n' e tenha como saída 'an' onde
an = (1 + 1/n)^n
#}

clear all
clc
close all

incremento = 1;
n = 1:incremento:1000;

for i = 1:length(n)
  an(i) = aproximacao_e(n(i));
endfor

figure(1)
plot(n,an, '.', 'color', 'r')
hold on
xlabel('n', 'fontsize', 40)
ylabel('a_n', 'fontsize', 40)

#plotar a reta y = e
xr = [0 1000];
yr = [exp(1) exp(1)];

plot(xr, yr, 'color', 'b')
