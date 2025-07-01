function x = ElimGauss(A, b)

  n = size(A, 1);
    if size(A, 2) ~= n
        error('A matriz A deve ser quadrada.');
    end
    if numel(b) ~= n
        error('O vetor b deve ter o mesmo número de linhas que A.');
    end

  for j = 1: n-1
    [~,k] = max(abs(A(j:n,j)));
    k = k + j - 1;

     A([j k], :) = A([k j], :);
     b([j k])= b([k j]);

    for i = j+1:n
       mij = A(i, j) / A(j, j);
       b(i) = b(i) - mij * b(j);
       for l = j+1:n
         A(i, l) = A(i, l) - mij * A(j, l);
       endfor
       A(i, j) = 0;
     endfor
  endfor
  if A(n, n) == 0
    error('Sistema singular (sem soluçao única).');
  endif
  x = zeros(n, 1);
  for i = n:-1:1
    x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
  endfor
endfunction
