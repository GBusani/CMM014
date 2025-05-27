clear all
clc


function [xk, iter] = steffensen(f, x0, tol, max_iter)
  xk = x0;
  for k = 1:max_iter
    fx = f(xk);
    fx1 = f(xk + fx);
    denominator = fx1 - fx;
    if abs(denominator) < eps
      break;
    endif
    xk1 = xk - fx^2 / denominator;
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

[x_stef, iter_stef] = steffensen(f, 1.5, 1e-14, 100);
fprintf("Steffensen: %.16f (em %d iterações)\n", x_stef, iter_stef);
