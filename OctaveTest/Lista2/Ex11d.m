clear all
clc
close all


function J = Jacobiano_Num(f, x, y, h)
  fx = f(x, y);
  dfdx = (f(x + h, y) - fx) / h;
  dfdy = (f(x, y + h) - fx) / h;
  J = [dfdx(:), dfdy(:)];
endfunction

function [raiz, iter] = Newton_xyNum(f, x0, y0, tol, max_iter, h)
  x = x0; y = y0;
  for k = 1:max_iter
    F = f(x, y);
    if norm(F) < tol
      break;
    endif

    J = Jacobiano_Num(f, x, y, h);

    if cond(J) > 1e12  # evitar matriz mal-condicionada
      break;
    endif

    delta = -J \ F(:);
    x = x + delta(1);
    y = y + delta(2);
  endfor
  raiz = [x, y];
  iter = k;
endfunction

# Definindo f como função vetorial
f = @(x, y) [x^2 + y^2 - 1;
             (x^2)/4 + 4*y^2 - 1];

# Ponto inicial
x0 = 0.5; y0 = 0.5;

# Parâmetros
tol = 1e-10;
max_iter = 100;
h = 1e-6;

[raiz, iter] = Newton_xyNum(f, x0, y0, tol, max_iter, h);

# Mostrar resultado
fprintf("Raiz encontrada (com Jacobiana numérica): (%.14f, %.14f) em %d iterações\n", raiz(1), raiz(2), iter);
