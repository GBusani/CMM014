#{
35. Seja
S = somatória: k = 1 -> n; k^3
escreva uma função que tenha como entrada n e saída o valor S, chame esta função de soma.
#}

function S = soma(n)
  S = 0;
  for k = 1:n
    S = S + k^3;
  endfor
endfunction
