#{
35. Seja
S = somatória: k = 1 -> n; k^3

escreva uma função no Matlab/Octave que tenha como entrada n e saída o valor S. Compare o resultado obtido
pela sua função com o valor exato de S, a saber: S = (n^2*(n + 1)^2)/4
#}

function S = Ex35(n)
  S = 0;
  for k = 1:n
    S = S + k^3;
  endfor
  s = (n^2*(n + 1)^2)/4
endfunction
