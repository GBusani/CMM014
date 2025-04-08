#{
12. Escreva uma função para calcular a área de um triângulo, sendo dados a sua base e sua altura.
#}
clear all
clc

b = input('Digite a base do triângulo: ')
h = input('Digite a altura do triângulo: ')

if b > 0 & h > 0
  display(['A área do triângulo é de ', num2str(b*h/2),' unidades.'])
else
  display('número inexistente.')
endif
