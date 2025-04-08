#{
 3. Escreva um código que tem como entrada um valor inteiro (aceitar somente valores entre 1 e 10) e saída a tabuada
de 1 a 10 do valor de entrada
#}
clear all
clc

x = 0
while (x < 1) | (x > 10)
  x = input("Escolha um número inteiro de 1 a 10: ")
end

display( ['Tabuada do ',num2str(x)])

for m = 1:10
  display([num2str(m), 'x', num2str(x),...
  ' = ', num2str(x*m) ])
end

