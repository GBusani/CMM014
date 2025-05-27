function S = exponencial2(x)
  S = 1;
 d = x;
 k = 1;
 while  S+d>S
    S = S + d;
    k = k +1;
    d = x.^k/factorial(k);


  end
k = k-1

  end
