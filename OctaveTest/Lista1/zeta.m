function z = zeta(s)
    z = 0;
    k = 1;
    termo = 1;

    while z < z + termo
        termo = 1 / (k^s);
        z = z + termo;
        k = k + 1;
    endwhile
endfunction
