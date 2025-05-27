function z = fibonacci(n)
  % Esta funcao calcula recursivamente o n=esimo termo
  % da sequencia de fibonacci


if n==1 || n==2
    z = 1;
else
   f1 = 1;
   f2 = 1;
    for i=3:1:n
      f3= f2+f1;
       f1=f2;
      f2=f3;

    end
    z = f3;
 end

end


