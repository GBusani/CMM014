%% Neste codigo ilustramos possiveis "falhas" que podem
% acontecer quando utilizamos a tolerancia absoluta  ou
% a tolerancia relativa.

clear all
clc

% Exemplo1: Tolerancia absoluta nao funciona
%{
f = @(x) (cos(x) - 1/2)^2;
g = @(x) (10^32)*f(x);

Teste1 = f(pi/3)
Teste2 = g(pi/3)
%}
% Exemplo2: Tolerancia relativa nao funciona
%
f = @(x) (cos(pi/3 + (10^(-32))*(x-pi/3)) - 1/2)^2;
x0 = 0;
Teste3 = f(x0)
%}



