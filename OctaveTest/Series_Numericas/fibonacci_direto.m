%% Neste codigo calculamos o n-esimo termo da sequencia
% de fibonacci de forma direta  e comparamos este resultado com
% a aproximacao dada pelo calculo da sequencia de fibonacci de forma recursiva

clear all
clc

phi = (1+sqrt(5))/2;
psi = 1-phi;
fdireto = @(n)  (phi^n - psi^n)/sqrt(5); % funcao que calcula o n-esimo termo da sequencia de fibonacci de forma direta


n = 93; %
for i = 1:1:n
  f= fibonacci(i);
  fnovo = fdireto(i);
  ErroA = abs(fnovo-f); % Erro absoluto
  display(['f_',num2str(i),' = ', num2str(f), ...
  ' , EA = ', num2str(ErroA),  ', ER = ', num2str(ErroA/f)])

end
