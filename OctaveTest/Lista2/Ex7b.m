clear all
clc


function [xk, iter] = newton_classico(f, df, x0, tol, max_iter)
  xk = x0;
  for k = 1:max_iter
    xk1 = xk - f(xk)/df(xk);
    if abs(xk1 - xk) < tol
      iter = k;
      xk = xk1;
      return;
    endif
    xk = xk1;
  endfor
  iter = max_iter;
endfunction

# Função e derivada
f = @(x) (x - 1) * log(x);
df = @(x) log(x) + (x - 1) / x;

[x_class, iter_class] = newton_classico(f, df, 1.5, 1e-14, 100);
fprintf("Newton clássico: %.16f (em %d iterações)\n", x_class, iter_class);
