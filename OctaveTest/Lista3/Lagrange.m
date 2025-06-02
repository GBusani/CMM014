function P = Lagrange(A)

  pkg load symbolic  # Carrega o pacote para usar syms

  #{
  Execute no terminal caso necessário:
  pkg install -forge symbolic
  #}

  syms x;
#{
  # Converte os dados numéricos para simbólicos com segurança
  X = arrayfun(@(v) sym(num2str(v)), A(:,1));
  Y = arrayfun(@(v) sym(num2str(v)), A(:,2));
  #}

  X = A(:,1);
  Y = A(:,2);
  n = length(X);

  P = 0;

  for i = 1:n
    Li = 1;
    for k = 1:n
      if k ~= i
        Li = Li * (x - X(k)) / (X(i) - X(k));
      endif
    endfor
    P = P + Y(i) * Li;
  endfor

  P = expand(P);  # Expande o polinômio para uma forma padrão
endfunction
