#{
x = 1 + 1/(2 + 1/(2 + 1/(...)))
Crie um código que forneça uma aproximação para o valor de x.
#}



function x = ExDesafio(n)
  y = 1/2;
  for cont = 1:n
    y = 1/(2 + y)
  endfor
  x = 1 + y;
endfunction


#{
Outro jeito:
N = 4;
H = sum(1./[1:1:N])
#}
