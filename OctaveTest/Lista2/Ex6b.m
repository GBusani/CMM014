clear all
clc


function fx = f(x, gamma)
  fx = cosh(x) + cos(x) - gamma;
end

function dfx = df(x)
  dfx = sinh(x) - sin(x);
end

function x_zero = newton(gamma)
  x0 = 1;  % chute inicial
  tol = 1e-14;
  max_iter = 1000;
  for k = 1:max_iter
    fx0 = f(x0, gamma);
    if abs(fx0) < tol
      break;
    end
    x0 = x0 - fx0 / df(x0);
  end
  x_zero = x0;
end

for gamma = [1, 2, 3]
  printf("γ = %d, Raiz ≈ %.16f\n", gamma, newton(gamma));
end

