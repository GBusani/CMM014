clear all
clc
close all


# (a) Método de Newton para encontrar interseção entre circunferência e elipse

# Definição das funções
f = @(x, y) [x^2 + y^2 - 1;
             x^2/4 + 4*y^2 - 1];

# Jacobiana analítica
J = @(x, y) [2*x, 2*y;
             x/2, 8*y];

# Método de Newton
function [root, it] = newton_xy(f, J, x0, y0, tol, max_iter)
  x = x0; y = y0;
  for it = 1:max_iter
    F = f(x, y);
    if norm(F) < tol
      break;
    endif
    A = J(x, y);
    delta = -A \ F;
    x = x + delta(1);
    y = y + delta(2);
  endfor
  root = [x; y];
endfunction

# Pontos iniciais para achar todos os pontos de interseção
iniciais = [ 0.8,  0.5;
             0.8, -0.5;
            -0.8,  0.5;
            -0.8, -0.5 ];

raizes = [];
for i = 1:size(iniciais, 1)
  [raiz, ~] = newton_xy(f, J, iniciais(i, 1), iniciais(i, 2), 1e-10, 100);
  raizes = [raizes; raiz'];
endfor


# (b) Plot das curvas e pontos de interseção
x = linspace(-1.5, 1.5, 400);
y = linspace(-1.5, 1.5, 400);
[X, Y] = meshgrid(x, y);
F1 = X.^2 + Y.^2 - 1;
F2 = X.^2/4 + 4*Y.^2 - 1;

figure(1);
contour(X, Y, F1, [0 0], 'b', 'LineWidth', 1.5);
hold on;
contour(X, Y, F2, [0 0], 'r', 'LineWidth', 1.5);
plot(raizes(:,1), raizes(:,2), 'ko', 'MarkerSize', 10, 'MarkerFaceColor','k');
legend("Circunferência", "Elipse", "Interseções");
title("Interseção entre circunferência e elipse");
axis equal;
grid on;
print('Ex11b.png', '-dpng', '-r300');

# (c) Bacia de atração

res = 400;
x = linspace(-2, 2, res);
y = linspace(-2, 2, res);
[X, Y] = meshgrid(x, y);
Z = zeros(size(X));

for i = 1:res
  for j = 1:res
    [pt, ~] = newton_xy(f, J, X(i,j), Y(i,j), 1e-6, 50);
    d = sqrt(sum((raizes - pt').^2, 2));
    [~, idx] = min(d);
    if min(d) < 1e-2
      Z(i,j) = idx;
    else
      Z(i,j) = 0;
    endif
  endfor
endfor

figure(2);
imagesc(x, y, Z);
axis xy;
axis equal;
colormap([0 0 0; 1 0.3 0.3; 0.3 0.7 1; 0.5 1 0.5; 0.8 0.6 0.2]);
title("Bacia de atração do método de Newton");
xlabel('x'); ylabel('y');
colorbar;
print('Ex11c.png', '-dpng', '-r300');

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
