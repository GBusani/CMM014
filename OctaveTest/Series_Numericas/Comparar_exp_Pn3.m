% Neste codigo  determinamos o erro relativo de Pn(x) e exp(x)


clc % limpa a janela de comandos
clear ll % limpa a memoria
close all % fecha todas as  figuras que tiverem abertas




% A funcao exponencial3(x) eh o polinomio de Taylo de grau n
% da funcao e^x calculado de modo a evitar overflow

x= 20  % Teste com x = 0.1 e 1
Px= exponencial3(x);


ERPx = abs(Px - exp(x))/exp(x)

