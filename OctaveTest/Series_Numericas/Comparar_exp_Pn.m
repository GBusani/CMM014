% Neste codigo  comparamos graficamente
% a funcao exponencial com os seus polinomios de Taylor
% de grau 0, 1, 2, e 3.

clc % limpa a janela de comandos
clear ll % limpa a memoria
close all % fecha todas as  figuras que tiverem abertas

x= -1:0.1:1;

% A funcao exponencial(x,n) eh o polinomio de Taylo de grau n
% da funcao e^x

P0= exponencial(x,0);
P1 = exponencial(x,1);
P2 = exponencial(x,2);
P3 = exponencial(x,3);
P4 = exponencial(x,4);


plot(x,P0,'-','color','k','linewidth',2)
hold on
plot(x,P1,'-','color','m','linewidth',2)
plot(x,P2,'-','color','y','linewidth',2)
plot(x,P3,'-','color','b','linewidth',2)
plot(x,P4,'-','color','g','linewidth',2)

plot(x,exp(x),'--','color','r','linewidth',2)
grid on

 % Definir labels do grafico
SizeFontTitle = 16; % definir o tamanho da fonte  titulo
SizeFontlabel = 20 % definir o tamanho da fonte dos labels
SizeFontTick = 20

set(gca,'FontSize',SizeFontTick)

xlabel('x','fontsize',SizeFontlabel)
ylabel('y','fontsize',SizeFontlabel)
%}

legend({'P_0(x)','P_1(x)','P_2(x)','P_3(x)','P_4(x)','e^x'},'Location','northwest')


