
function fn = seq(n)
  if mod(n,2) == 1
    fn = 1;
  else
    fn = 2/(n + 2);
  endif
endfunction

