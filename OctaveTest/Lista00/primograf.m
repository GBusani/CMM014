#{
Faça um programa que imprima os 100 primeiros números primos
#}
clear all
clc

i = 0;
p = [];
cont = 0;

while cont < 100
  i = i + 1;
  if isprime(i)
    cont = cont + 1;
    p = [p i];
  endif
endwhile

display(num2str(p))
