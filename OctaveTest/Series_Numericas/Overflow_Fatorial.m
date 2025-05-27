clc
clear all
close all
x = 100;
N = 500;
n = 1:1:N;
Fat1 = zeros(1,N);
Fat2 = zeros(1,N);
for k = 1:N
  Fat1(k) = divisao_fatorial(x,k);
  Fat2(k) = divisao_fatorial2(x,k);
end

plot(n,Fat1,'o','MarkerSize',10)
set(gca, 'YScale', 'log')
ymax = max(Fat2);
ymin = min(Fat2);

ylim([ymin ymax])

yticks([ymin 1   ymax])

hold on
plot(n,Fat2,'*','MarkerSize',8)
% Definir labels do grafico
SizeFontTitle = 16; % definir o tamanho da fonte  titulo
SizeFontlabel = 20 % definir o tamanho da fonte dos labels
SizeFontTick = 20

set(gca,'FontSize',SizeFontTick)

xlabel('n','fontsize',SizeFontlabel)
ylabel('x^n/n!','fontsize',SizeFontlabel)

