clear all
clc
close all


t = 1:100;


 # Definir labels do grafico
SizeFontTitle = 16; # definir o tamanho da fonte  titulo
SizeFontlabel = 20; # definir o tamanho da fonte dos labels
SizeFontTick = 20;

p_b = Funcao_Caos(0.7, 0.05, t);
figure(1)
plot(t, p_b, "*k")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1b.png', '-dpng', '-r300');


p_c = Funcao_Caos(1.95, 0.05, t);
figure(2)
plot(t, p_c, "*k")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1c.png', '-dpng', '-r300');


p_d1 = Funcao_Caos(2.01, 0.05, t);
p_d2 = Funcao_Caos(2.49, 0.05, t);
p_d3 = Funcao_Caos(2.56, 0.05, t);
figure(3)
plot(t, p_d1, "*g")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1d1.png', '-dpng', '-r300');

figure(4)
plot(t, p_d2, "*r")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1d2.png', '-dpng', '-r300');

figure(5)
plot(t, p_d3, "*b")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1d3.png', '-dpng', '-r300');


p_e1 = Funcao_Caos(2.89, 0.050000, t);
p_e2 = Funcao_Caos(2.89, 0.050001, t);
figure(6)
plot(t, p_e1, "*b")
hold on
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
plot(t, p_e2, "*g")
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
legend('p_n1 = 0.050000', 'p_n2 = 0.050001')
print('Ex1e.png', '-dpng', '-r300');


p_f = Funcao_Caos(2.7, 0.05, 1:1000);
figure(7)
plot(1:1000, p_f, "*b")
title('Gráfico da sequência p_{n+1} = p_n + r p_n (1 - p_n)', 'FontSize', 16);
xlabel("n", 'fontsize', SizeFontlabel)
ylabel("p(n)", 'fontsize', SizeFontlabel)
print('Ex1f.png', '-dpng', '-r300');
