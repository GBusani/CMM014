clear all
clc


function [x_hat, iter] = newton_aitken(f, df, x0, tol, max_iter)
  x = zeros(1, max_iter+2);
  x(1) = x0;

  for k = 1:max_iter
    x(k+1) = x(k) - f(x(k)) / df(x(k));
    x(k+2) = x(k+1) - f(x(k+1)) / df(x(k+1));

    # Atkens
    delta1 = x(k+1) - x(k);
    delta2 = x(k+2) - x(k+1);
    denominator = delta2 - delta1;

    if abs(denominator) < eps
      break;
    endif

    x_hat_k = x(k) - (delta1^2) / denominator;

    if k > 1
      if abs(x_hat_k - x_hat_prev) < tol
        x_hat = x_hat_k;
        iter = k;
        return;
      endif
    endif
    x_hat_prev = x_hat_k;
  endfor
  x_hat = x_hat_k;
  iter = max_iter;
endfunction

# Função e derivada
f = @(x) (x - 1) * log(x);
df = @(x) log(x) + (x - 1) / x;

# Chamada
[x_aprox, iter] = newton_aitken(f, df, 1.5, 1e-14, 100);

fprintf("Aproximação: %.16f\nIterações: %d\n", x_aprox, iter);
