clear all
close all
clc

x = 1;  % Rode para x = 100. Para ver o que acontece
N = 20;


for n = 1:1:N
Erro_Relativo(n) = abs(exp(x) - exponencial(x,n))/exp(x);
end

plot([1:1:N],Erro_Relativo,'--o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')

grid on
  set(gca, 'YScale', 'log')


 % Definir labels do grafico
SizeFontTitle = 16; % definir o tamanho da fonte  titulo
SizeFontlabel = 20; % definir o tamanho da fonte dos labels
SizeFontTick = 20;

set(gca,'FontSize',SizeFontTick)

xlabel('n','fontsize',SizeFontlabel)
ylabel('Erro Relativo','fontsize',SizeFontlabel)

