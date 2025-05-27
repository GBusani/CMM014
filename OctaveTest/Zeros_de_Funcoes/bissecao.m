function [xM,iter] = bissecao(f,a,b,tol)
  xM = (a+b)/2;
  iter = 1;
  while  abs(f(xM)) > tol %  Criterios de parada possiveis: |f(xM)| < tol ou (b-a)<tol
    if f(a)*f(xM)<0
      b = xM;
    else
      a = xM;
    endif
   xM  = (a+b)/2;
   iter = iter +1;
  endwhile
  end
