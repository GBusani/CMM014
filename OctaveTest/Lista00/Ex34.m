#{
34. Considere a equação do 2º grau
ax^2 + bx + c = 0.
Escreva uma função que tenha como entrada os coeficientes a,b,c desta equação e saída suas raízes. Caso a
equação não possua raiz real, sua função deve passar a seguinte mensagem: "Esta equação não possui raiz real."
#}

function r = Ex34(a, b, c)
  delta = b^2 - 4*a*c;
  if delta < 0
    r = 'Esta equação não possui raiz real.';
  elseif delta == 0
    r = -b/2*a;
  else
    r = [];
    x = (-b + sqrt(delta))/(2*a);
    r = [r x];
    x = (-b - sqrt(delta))/(2*a);
    r = [r x];
  endif
endfunction
