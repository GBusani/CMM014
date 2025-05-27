clear all
clc
close all


x = linspace(-2*pi, 2*pi, 1000);
f = sin(x);

P1 = Funcao_TaylorS(x, 1);
P3 = Funcao_TaylorS(x, 3);
P5 = Funcao_TaylorS(x, 5);
P7 = Funcao_TaylorS(x, 7);

figure(1);
plot(x, f, 'k-', 'LineWidth', 2); hold on;
plot(x, P1, 'b--', 'LineWidth', 1);
plot(x, P3, 'g--', 'LineWidth', 1);
plot(x, P5, 'r--', 'LineWidth', 1);
plot(x, P7, 'm--', 'LineWidth', 1);
legend('sin(x)', 'P_1(x)', 'P_3(x)', 'P_5(x)', 'P_7(x)');
axis([-pi pi -2 2]);
xlabel('x'); ylabel('y');
title('Polinômios de Taylor de sin(x) em torno de x = 0');
grid on;
print('Ex5.png', '-dpng', '-r300');
