clear all
clc
close all


s_vals = linspace(2.5, 10, 100);  % evita s = 1 (divergência)
z_vals = arrayfun(@zeta, s_vals);

figure;
plot(s_vals, z_vals, 'b-', 'LineWidth', 2);
title('Aproximação da Função Zeta de Riemann');
xlabel('s');
ylabel('\zeta(s)');
grid on;
print('Ex4.png', '-dpng', '-r300');
