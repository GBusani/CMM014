#{
18. A série de Fibonacci é formada pela sequência 1,1,2,3,5,8,13,21,34,55,···. Faça um programa capaz de gerar a
série até o n-ésimo termo
#}
clear all
clc

display('Esse programa gera a sequência de Fibonacci.')
n = input('Digite quantos termos deseja gerar: ');
fib = 1;
somador = 0;

for i = 1:n
  display(num2str(fib))
  anterior = fib;
  fib = fib + somador;
  somador = anterior;
end

