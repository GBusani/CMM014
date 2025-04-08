#{
21. Faça um programa que peça um número inteiro e determine se ele é ou não um número primo.
#}

function p = Ex21(x)
p = x;
cont = 0;
  for i = 1:2:sqrt(x)
    if mod(x,i) == 0
      cont = cont + 1;
    endif
  endfor
  if cont == 1
    display([num2str(p), ' é primo!'])
  else
    display([num2str(p), ' não é primo.'])
  endif
endfunction
