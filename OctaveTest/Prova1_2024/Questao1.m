#{
1. (20 pontos) Escreva um código que tenha como entrada dois números quaisquer e
saída a soma de todos os números pares entre estes dois números, incluindo-os.
Salve este código com o nome Questao1
#}

n = [1 12];

n = sort(n);
soma = 0;

for i = n(1):n(2)
  if mod(i, 2) == 0
    soma = soma + i;
  endif
endfor

display(soma)
