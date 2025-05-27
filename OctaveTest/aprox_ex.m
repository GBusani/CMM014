function s = aprox_ex(x)
  s = 0;
  d = 1;
  k = 1;
  while s + d > s
    s = s + d;
    d = d*x/k;
    k = k + 1;
  endwhile
k = k - 1;
endfunction
