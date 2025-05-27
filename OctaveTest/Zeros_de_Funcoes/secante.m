function [x2,iter] = secante(f,x0,x1,eps_a,eps_r,iter_max)

 fx0 = abs(f(x0));

 display(['x_0  = ',num2str(x0), ...
              ' f(x_0)  = ', num2str(f(x0))]);

 display(['x_1  = ',num2str(x1), ...
                 ' f(x_1)  = ', num2str(f(x1))]);

 x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));

 iter = 1;
 display(['x_',num2str(iter+1), ' = ',num2str(x2), ...
                 ' f(x_', num2str(iter),') = ', num2str(f(x1))]);


while  (abs(f(x2))>eps_a + eps_r*fx0)  ... % condicao de sucesso
              &&  abs(x2-x1)>eps_a ...     % os termos da sequencia de iterados se acumulam
              && iter<iter_max     %  numero maximo de iteracoes

           x0 = x1;
           x1 = x2;
           x2 = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
           iter = iter + 1;

            display(['x_',num2str(iter+1), ' = ',num2str(x2), ...
                 ' f(x_', num2str(iter),') = ', num2str(f(x2))]);

end

if  iter >= iter_max
      display("*********************************************")
       display ( "   ")
       display(" O código atingiu o número máximo de iterações.        ")
       display ( "   ")
       display("*********************************************")
end

 end
