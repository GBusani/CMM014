function Px = Funcao_TaylorS(x, n)
    Px = zeros(size(x));
    for k = 0:floor(n/2)
        termo = ((-1)^k) * x.^(2*k+1) / factorial(2*k+1);
        Px = Px + termo;
    endfor
endfunction
