#{
36. Considere a sequência cujo termo geral é definido por:
f (n) =
1 , se n for ímpar
2/(n + 2) , se n for par.

Programe no Octave/Matlab uma função que tenha como entrada n e saída o n-ésimo termo desta sequência. Em
seguida, plot o gráfico desta sequência.
#}

n = 1:1:100;
for i = 1:length(n)
  fn(i) = seq(n(i));
endfor

plot(n,fn,'p','color','r')
