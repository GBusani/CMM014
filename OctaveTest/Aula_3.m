clear all
clc

# Gerar num inteiros aleatorios

vi = 1
vf = 100
qtd = 10
v = randi (vf, qtd, vi)

aux = mod(v,2)

qtd_impares = sum(aux)
qtd_pares = numel(aux) - qtd_impares
