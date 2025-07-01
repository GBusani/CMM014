
x = [0.387, 0.723, 1.000, 1.523, 5.203, 9.510, 19.229, 30.107]';
P = [0.241, 0.615, 1.000, 1.881, 11.861, 29.457, 84.323, 164.790]';

M = [ones(size(x)), x];
Ln_X = [ones(size(x)), log(x)];

A = M' * M;
B = M' * P;
alfas_linear = A \ B;
P_linear = alfas_linear(1) + alfas_linear(2) * x;

B = M' * log(P);
alfas_exp = A \ B;
a_exp = exp(alfas_exp(1));
b_exp = exp(alfas_exp(2));
P_exp = a_exp * (b_exp .^ x);

A = Ln_X' * Ln_X;
B = Ln_X' * P;
alfas_log = A \ B;
P_log = alfas_log(1) + alfas_log(2) * log(x);

B = Ln_X' * log(P);
alfas_pot = A \ B;
a_pot = exp(alfas_pot(1));
b_pot = alfas_pot(2);
P_pot = a_pot * (x .^ b_pot);

x_ceres = 2.766;
P_ceres = a_pot * (x_ceres ^ b_pot)

figure;
plot(x, P, 'ko', 'markerfacecolor','k'); hold on;
plot(x, P_linear, 'c-', 'linewidth', 2);
plot(x, P_exp, 'g-', 'linewidth', 2);
plot(x, P_log, 'b-', 'linewidth', 2);
plot(x, P_pot, 'y-', 'linewidth', 2);
plot(x_ceres, P_ceres, 'co', 'markerfacecolor','c');
legend('Dados reais', 'Linear', 'Exponencial', 'Log', 'Potencial','Ceres');
xlabel('x');
ylabel('P');
title('Ajuste de Modelos aos Dados');






