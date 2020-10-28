clear, clc

x = [
1 100;
1 110;
1 110;
1 125;
1 125;
1 130;
1 130;
1 140;
1 140;
1 150;
]


y = [
88.5;
72.2;
72.9;
59.9;
59.1;
58.7;
47.4;
35.6;
35.0;
30.4;
]

b = x\y;
b = b.'

b1 = b(2)
b0 = b(1)

xserie = x(:,2)
xserie
yCalc = b0 + b1*xserie
yCalc

scatter(xserie, y)
hold on
plot(xserie, yCalc)

xlabel('Estimated proxy size')
ylabel('Actual added and modified size')

xk = 205.5
yk = b0 + b1 * xk
xk
yk

%calculo de R^2
R2 = 1 - sum((y - yCalc).^2)/sum((y - mean(y)).^2)
R2

mytitle = ['Linear regression relation between x and y, R ' num2str(xk) ' ' num2str(yk) ' ' num2str(R2)]
mytitle 
title(mytitle)
grid on