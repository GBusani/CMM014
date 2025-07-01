function [L, U, P] = FatLU(A)
   n = size(A, 1);
    L = eye(n);
    U = A;
    P = eye(n);

    for j = 1:n-1
        [~, k] = max(abs(U(j:n, j)));
        k = k + j - 1;
        if k ~= j
            U([j, k], :) = U([k, j], :);
            L([j, k], 1:j-1) = L([k, j], 1:j-1);
            P([j, k], :) = P([k, j], :);
        endif
        for i = j+1:n
            m = U(i, j) / U(j, j);
            U(i, j:n) = U(i, j:n) - m * U(j, j:n);
            L(i, j) = m;
        endfor
    endfor
endfunction
