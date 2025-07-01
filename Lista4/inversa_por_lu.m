 function A_inv = inversa_por_lu(A)
    n = size(A, 1);
    [L, U, P] = FatLU(A);
    A_inv = zeros(n);

    for i = 1:n
        e = zeros(n, 1);
        e(i) = 1;
        y = L \ (P * e);
        x = U \ y;
        A_inv(:, i) = x;
    end
end
