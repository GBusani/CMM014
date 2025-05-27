% Neste codigo  determinamos o erro relativo de Pn(x) e exp(x)


clc % limpa a janela de comandos
clear ll % limpa a memoria
close all % fecha todas as  figuras que tiverem abertas




% A funcao exponencial(x,n) eh o polinomio de Taylo de grau n
% da funcao e^x

x= 100  % Teste com x = 0.1 e 1
P0x= exponencial(x,0);
P1x = exponencial(x,1);
P2x = exponencial(x,2);
P3x = exponencial(x,3);
P4x = exponencial(x,200);


ERP0x = abs(P0x - exp(x))/exp(x)
ERP1x = abs(P1x - exp(x))/exp(x)
ERP2x = abs(P2x - exp(x))/exp(x)
ERP3x = abs(P3x - exp(x))/exp(x)
ERP4x = abs(P4x - exp(x))/exp(x)


