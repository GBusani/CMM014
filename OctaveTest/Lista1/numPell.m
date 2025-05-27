function p_n = numPell(n)
  if n == 0
    p_n = 0;
  elseif n == 1
    p_n = 1;
  else
    seqp = [0 1];
    for k = 3:n+1
      seqp(k) = 2*seqp(k - 1) + seqp(k - 2);
    endfor
    p_n = seqp(n + 1);
  endif
endfunction
