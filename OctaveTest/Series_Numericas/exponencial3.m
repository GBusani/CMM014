function S = exponencial3(x)
  S = 0;
 d = 1;
 k = 1;
 while  S+d>S
    S = S + d;
    d = d*x/k;
    k = k +1;



  end
k = k-1;

  end
