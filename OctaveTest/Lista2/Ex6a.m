clear all
clc


function fx = f(x, gamma)
  fx = cosh(x) + cos(x) - gamma;
end

function x_zero = bissecao(gamma)
  a = -10; b = 10;
  tol = 1e-14;
  max_iter = 1000;
  for k = 1:max_iter
    xk = (a + b)/2;
    fxk = f(xk, gamma);
    if abs(fxk) < tol
      break;
    elseif f(a, gamma) * fxk < 0
      b = xk;
    else
      a = xk;
    end
  end
  x_zero = xk;
end

for gamma = [1, 2, 3]
  printf("γ = %d, Raiz ≈ %.16f\n", gamma, bissecao(gamma));
end

