function [x1,iter] = newton(f,df,x0,eps_a,eps_r,eps_d,iter_max)
  fx0 = abs(f(x0));

 if  abs(df(x0))<eps_d

       display("*********************************************")
       display ( "   ")
                 display(" Cuidado: derivada muito próxma de zero! ")
                 display ( "   ")
                 display("*********************************************")
  end

  display(['x_0 = ',num2str(x0), ...
                 ' f(x_0) = ', num2str(f(x0))]); % mostrar os termos da sequencia do metodo de Newton


 x1 = x0  - f(x0)/df(x0);
 iter = 1;
 display(['x_',num2str(iter), ' = ',num2str(x1), ...
                 ' f(x_', num2str(iter),') = ', num2str(f(x1))]);

  while  (abs(f(x1))>eps_a + eps_r*fx0)  ... % conbinacao da tolerancia relativa e absoluta
              &&  abs(x1-x0)>eps_a ...     % os termos da sequencia de iterados se acumulam
              && iter<iter_max ...    %  numero maximo de iteracoes

             if  abs(df(x1))<eps_d
                display("*********************************************")
               display ( "   ")
                 display(" Cuidado: derivada muito próxma de zero! ")
                 display ( "   ")
       display("*********************************************")
             end

              x0 = x1;

              x1 = x0  - f(x0)/df(x0);
              iter = iter+1;
              display(['x_',num2str(iter), ' = ',num2str(x1), ...
                 ' f(x_', num2str(iter),') = ', num2str(f(x1))]); % mostrar os termos da sequencia do metodo de Newton



  end

if  iter >= iter_max
       display("*********************************************")
       display ( "   ")
       display(" O código atingiu o número máximo de iterações.        ")
       display ( "   ")
       display("*********************************************")
end

  end
