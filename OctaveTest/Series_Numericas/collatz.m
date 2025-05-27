%% Este codigo encontra os termos da sequencia de collatz

clear all
clc

a = 1000; % a = 27,33,  1000
n = 1;
display(['a_',num2str(n),' = ', num2str(a)]) % Este comando imprimi na janela de comandos o termo a_1 = a
while a ~= 1
  if mod(a,2) == 0
    a = a/2;
    n = n +1;
  else
    a = 3*a+1;
    n = n+1;
  endif

  display(['a_',num2str(n),' = ', num2str(a)])% Este comando imprimi na janela de comandos o termo a_n = a

  end

