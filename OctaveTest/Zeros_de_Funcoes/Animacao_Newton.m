clear all
clc
close all

f = @(x)  tan(x);%x.^2-4;
df = @(x) 1./cos(x).^2;%2*x;
r = @(x,x0) df(x0)*(x-x0)+f(x0);
N = @(u) u - f(u)/df(u);

xv = -0.5:0.024:pi/2-0.1;




x0 = pi/2-0.2;


 x1 = N(x0);

  x2 = N(x1);


  x3 = N(x2);

  x4 = N(x3);





% Definir labels do grafico
SizeFontTitle = 16; % definir o tamanho da fonte  titulo
SizeFontlabel = 26; % definir o tamanho da fonte dos labels
SizeFontTick = 26;

set(gca,'FontSize',SizeFontTick)

%xlabel('x','fontsize',SizeFontlabel)
%ylabel('y','fontsize',SizeFontlabel)
%}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Iteracao 0
figure(1)
plot(xv, f(xv),'-k', 'linewidth',2)
hold on
grid on
x0 = pi/2-0.2;

plot(x0,0,'o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')
 text(x0+0.025,0,'x_0','FontSize',20)

 %  --- Ticks ----

set(gca,'FontSize',SizeFontTick)
set(gca,'XTick',[-0.5 0  x0 1.5])
set(gca,'XTickLabel',{'a', '\xi','x_0','b' },...
    'fontsize',SizeFontTick)

set(gca,'YTick',[ f(0)  f(x0) ])
set(gca,'YTickLabel',{'0','f(x_0)'})

xlim([ -0.5  1.5])
ylim([ -5.94 9.78])
 pause(10)


 % Iteracao 1
 xv1 = 1:0.05:pi/2-0.1;
plot(xv1,r(xv1,x0),'-m','LineWidth',1)

% x1 = N(x0);
plot(x1,0,'o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')
  text(x1+0.025,0,'x_1','FontSize',20)

 set(gca,'FontSize',SizeFontTick)
set(gca,'XTick',[-0.5 0  x1  x0 1.5])
set(gca,'XTickLabel',{'a', '\xi','x_1','x_0','b' },...
    'fontsize',SizeFontTick)

set(gca,'YTick',[ f(0)  f(x1) f(x0) ])
set(gca,'YTickLabel',{'0','f(x_1)','f(x_0)'})

xlim([ -0.5  1.5])
ylim([ -5.94 9.78])
 pause(5)




  % Iteracao 2
  %x2 = N(x1);
  xv2 = 0.5:0.05:1.5;
  plot(xv2,r(xv2,x1),'-b','LineWidth',1)

plot(x2,0,'o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')
  text(x2+0.025,0,'x_2','FontSize',20)


  set(gca,'FontSize',SizeFontTick)
set(gca,'XTick',[-0.5 0  x2  x1  x0 1.5])
set(gca,'XTickLabel',{'a', '\xi','x_2','x_1','x_0','b' },...
    'fontsize',SizeFontTick)

set(gca,'YTick',[ f(0)   f(x2)  f(x1) f(x0) ])
set(gca,'YTickLabel',{'0','f(x_2)' ,'f(x_1)','f(x_0)'})

xlim([ -0.5  1.5])
ylim([ -5.94 9.78])
 pause(5)




  % Iteracao 3
  xv2 = 0:0.05:x1;
  plot(xv2,r(xv2,x2),'-r','LineWidth',1)

plot(x3,0,'o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')
  text(x3+0.025,0,'x_3','FontSize',20)

  set(gca,'FontSize',SizeFontTick)
set(gca,'XTick',[-0.5 0 x3   x2  x1  x0 1.5])
set(gca,'XTickLabel',{'a', '\xi', 'x_3', 'x_2','x_1','x_0','b' },...
    'fontsize',SizeFontTick)

set(gca,'YTick',[ f(0)    f(x3) f(x2)  f(x1) f(x0) ])
set(gca,'YTickLabel',{'0','f(x_3)','f(x_2)' ,'f(x_1)','f(x_0)'})

xlim([ -0.5  1.5])
ylim([ -5.94 9.78])
 pause(5)




% Iteracao 4
  %x4 = N(x3);
  xv3 = -0.4:0.05:x3;
  plot(xv3,r(xv3,x3),'-g','LineWidth',1)

plot(x4,0,'o', 'LineWidth',1,...
        'MarkerSize',4,...
        'MarkerEdgeColor','b',...
        'MarkerFaceColor','b')
  text(x4+0.025,0,'x_4','FontSize',20)

set(gca,'FontSize',SizeFontTick)
set(gca,'XTick',[-0.5 0  x4 x3   x2  x1  x0 1.5])
set(gca,'XTickLabel',{'a', '\xi', 'x_4' ,'x_3', 'x_2','x_1','x_0','b' },...
    'fontsize',SizeFontTick)

set(gca,'YTick',[ f(0)    f(x4)  f(x3) f(x2)  f(x1) f(x0) ])
set(gca,'YTickLabel',{'0','f(x_4)','f(x_3)','f(x_2)' ,'f(x_1)','f(x_0)'})

xlim([ -0.5  1.5])
ylim([ -5.94 9.78])
 pause(5)



