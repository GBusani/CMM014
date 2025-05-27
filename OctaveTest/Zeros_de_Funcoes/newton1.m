function [x0,iter] = newton1(f,df,x0,tol)
iter =0;
  while abs(f(x0))>tol
       x1 = x0  - f(x0)/df(x0);
       x0 = x1;
    iter = iter+1;
  endwhile


  end
