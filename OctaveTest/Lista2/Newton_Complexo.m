function root = Newton_Complexo(p, dp, z0, tol, max_iter)
  z = z0;
  for k = 1:max_iter
    if abs(dp(z)) < tol
      break;
    endif
    z = z - p(z) / dp(z);
    if abs(p(z)) < tol
      break;
    endif
  endfor
  root = z;
endfunction
