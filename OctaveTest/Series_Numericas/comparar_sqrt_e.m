%% Neste codigo verificamos que de fato
% o polinomio de Taylor de grau 5 eh suficiente
% para assegurar uma aproximacao de sqrt(e) com
% 4 casas decimais exatas
clc
clear all

valor_exato = sqrt(exp(1));
valor_aproximado =  exponencial(0.5,5);

Erro_Absoluto = abs(valor_exato-valor_aproximado) % este valor deve ser menor do que 0.5*10^-4
