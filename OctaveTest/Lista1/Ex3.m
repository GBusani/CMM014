clear all
clc
close all

 # Definir labels do grafico
SizeFontTitle = 16; # definir o tamanho da fonte  titulo
SizeFontlabel = 20; # definir o tamanho da fonte dos labels
SizeFontTick = 20;

n = 1:20;
a = [];
for k = n
  a(k) = (numPell(k) + numPell(k + 1))/numPell(k +1);
endfor

sqrt2_line = sqrt(2) * ones(size(n));
% Gráfico
figure;
plot(n, a, 'k-', 'LineWidth', 2);
hold on;
plot(n, sqrt2_line, 'r--', 'LineWidth', 1); # Linha horizontal de referência
title('Sequência a_n = (P_{n-1} + P_n)/P_n e comparação com √2');
xlabel('n');
ylabel('a_n');
legend('a_n', '√2 (linha de referência)');
grid on;
print('Ex3.png', '-dpng', '-r300');
