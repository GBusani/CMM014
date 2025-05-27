% Este codigo exibi os termos sequencia da sequencia de fibonacci
clc
clear

n = 20
for i = 1:1:n
  z = fibonacci(i); % a funcao fibonacci(i) calcula recursivamente o i-esimo termo da sequencia de fibonacci
  display(['f_',num2str(i),' = ', num2str(z)])
  end
