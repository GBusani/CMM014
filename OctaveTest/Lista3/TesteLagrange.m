clear all
clc


A =  [1.3,3.2;
      1.8, 4.3;
      2.6,0.5;
      3.9,-1.7];

P = Lagrange(A);
pretty(P)

disp('Polinômio com coeficientes decimais:');
disp(vpa(P, 8))  # Mostra com 8 dígitos de precisão
