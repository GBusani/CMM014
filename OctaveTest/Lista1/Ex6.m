clear all
clc

x1 = 10;
x2 = 700;
x3 = 1000;

f = @(x) exp(-(x));

display(['f(10) = ',num2str(f(x1)), '.'])
display(['f(700) = ',num2str(f(x2)), '.'])
display(['f(1000) = ',num2str(f(x3)), '.'])
