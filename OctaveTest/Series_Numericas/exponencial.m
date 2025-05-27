function S = exponencial(x,n)
  S = 0;

  for k = 0:1:n
    S = S + x.^k/factorial(k);
  endfor


  end
