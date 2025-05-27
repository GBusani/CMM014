clear all
clc
close all


# Geração da bacia de atração
function plot_bacia(p, dp, roots_ref, titulo)
  res = 500;
  x = linspace(-2, 4, res);
  y = linspace(-2, 2, res);
  [X, Y] = meshgrid(x, y);
  Z0 = X + 1i*Y;
  Zcolor = zeros(res);

  for i = 1:res
    for j = 1:res
      zf = Newton_Complexo(p, dp, Z0(i,j), 1e-6, 50);
      dists = abs(zf - roots_ref);
      [min_dist, idx] = min(dists);
      if min_dist < 1e-3
        Zcolor(i,j) = idx;
      else
        Zcolor(i,j) = 0;
      endif
    endfor
  endfor

  figure;
  imagesc(x, y, Zcolor);
  axis xy;
  colormap([1 0.5 0; 0.7 0 0.8; 0 1 0; 0.5 0.5 1]); % cores novas
  title(titulo);
  xlabel('Re(z)');
  ylabel('Im(z)');
  colorbar;
endfunction


# Caso 1: p(z) = (z^2 + 1)(z - sqrt(3))
p1 = @(z) (z.^2 + 1) .* (z - sqrt(3));
dp1 = @(z) 2*z .* (z - sqrt(3)) + (z.^2 + 1);
roots_ref1 = [1i, -1i, sqrt(3)];
plot_bacia(p1, dp1, roots_ref1, 'Bacia: p(z) = (z^2 + 1)(z - sqrt(3))');
print('Ex8p1.png', '-dpng', '-r300');

# Caso 2: p(z) = (z^2 + 1)(z - 4.5)
p2 = @(z) (z.^2 + 1) .* (z - 4.5);
dp2 = @(z) 2*z .* (z - 4.5) + (z.^2 + 1);
roots_ref2 = [1i, -1i, 4.5];
plot_bacia(p2, dp2, roots_ref2, 'Bacia: p(z) = (z^2 + 1)(z - 4.5)');
print('Ex8p2.png', '-dpng', '-r300');

# Caso 3: p(z) = (z^2 + pi)(z + 3)
p3 = @(z) (z.^2 + pi) .* (z + 3);
dp3 = @(z) 2*z .* (z + 3) + (z.^2 + pi);
roots_ref3 = [sqrt(pi)*i, -sqrt(pi)*i, -3];
plot_bacia(p3, dp3, roots_ref3, 'Bacia: p(z) = (z^2 + pi)(z + 3)');
print('Ex8p3.png', '-dpng', '-r300');
