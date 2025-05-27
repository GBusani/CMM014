clear all
clc
close all


x = linspace(-3, 3, 1000);
gammas = [1, 2, 3];
cores = ['r', 'g', 'b'];

figure(1);
hold on;
for i = 1:length(gammas)
    gamma = gammas(i);
    fx = cosh(x) + cos(x) - gamma;
    plot(x, fx, cores(i), 'LineWidth', 1);
endfor

# Adiciona linha horizontal y = 0
plot(x, zeros(size(x)), 'k--');

legend('γ = 1', 'γ = 2', 'γ = 3', 'y = 0');
xlabel('x');
ylabel('f(x)');
title('f(x) = cosh(x) + cos(x) - \gamma para diferentes valores de \gamma');
grid on;
hold off;
print('Ex6Fx.png', '-dpng', '-r300' );
