clear all
clc
pkg load symbolic

syms x
fx = cos(x) + sin(x);

for k = 1:5
  X(k) =  -sym('pi')/2 + sym('pi')*k/4;    # constrói X como simbólico exato
  Y(k) = subs(fx, x, X(k));
endfor

A = [X.',Y.'];

P = Lagrange(A);

disp('Polinômio com coeficientes decimais:');
disp(vpa(P, 8))  # Mostra com 8 dígitos de precisão

erro = P - fx;

disp('Erro simbólico (P(x) - (cos(x) + sin(x))) = ');
pretty(erro)

x_aval = sym('pi')/4;          # ponto de avaliação x = pi/4
fx_val = double(subs(fx, x, x_aval));    # f(pi/4)
P_val  = double(subs(P,  x, x_aval));    # P(pi/4)

erro = abs(fx_val - P_val);             # erro absoluto

fprintf('f(%.2f) = %.10f\n', double(x_aval), fx_val);
fprintf('P(%.2f) = %.10f\n', double(x_aval), P_val);
fprintf('Erro absoluto em x = %.2f: %.10e\n', double(x_aval), erro);
