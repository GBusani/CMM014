function [xM,iter] = Funcao_Bissecao(f,a,b,tol)
#considerando sempre a < b, com f(a)*f(b) < 0
xM = (a + b)/2;
iter = 1;
while (b - a) > tol
  if f(a)*f(xM) > 0
    a = xM;
    else
    b = xM;
  endif
  xM = (a + b)/2;
  iter += 1;
endwhile
endfunction
