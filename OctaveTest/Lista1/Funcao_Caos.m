function y = Funcao_Caos(r,x,n)
  y = [];
  for k = n
    n = x + r*x*(1 - x);
    y = [y n];
    x = n;
  endfor
endfunction
