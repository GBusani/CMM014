clear all
clc
close all

 # Definir labels do grafico
SizeFontTitle = 16; # definir o tamanho da fonte  titulo
SizeFontlabel = 20; # definir o tamanho da fonte dos labels
SizeFontTick = 20;

fib = [1];
somador = 0;
n = 1:50;
phi_n = [];

for i = n
  anterior = fib(i);
  fib = [fib, anterior + somador];
  somador = anterior;
  phi_n = [phi_n, fib(i + 1)/fib(i)];
end

figure(1)
plot(n, phi_n, "-k", 'LineWidth', 2)
title('Gráfico da sequência \phi_n = (f_{n+1})/(f_{n})', 'FontSize', 16);
xlabel('n', 'fontsize', SizeFontlabel);
ylabel('\phi_n', 'fontsize', SizeFontlabel);
print('Ex2a.png', '-dpng', '-r300');


x = [1];
for j = 1:49
  x(j + 1) =  1/(1 + x(j));
endfor

figure(2)
plot(n, x, "-k", 'LineWidth', 2)
title('Gráfico da sequência x_{n+1} = 1/(1+x_n), x_1 = 1', 'FontSize', 16);
xlabel('n', 'fontsize', SizeFontlabel);
ylabel('x_n', 'fontsize', SizeFontlabel);
print('Ex2b.png', '-dpng', '-r300');


d_n = [];
for k = n
  d_n(k) = factorial(k)/k^k;
endfor

figure(3)
plot(n, d_n, "-k", 'LineWidth', 2)
title('Gráfico da sequência d_{n} = (n!)/(n^n)', 'Fontsize', 16);
xlabel('n', 'fontsize', SizeFontlabel);
ylabel('d_n', 'fontsize', SizeFontlabel);
print('Ex2c.png', '-dpng', '-r300');
