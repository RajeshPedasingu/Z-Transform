clc;
clear all;
close all;


%--Q4_1---------
num=[3 1 0];
den=[1 -0.25 -1/8];
H=filt(num,den)

num1=[1 -1];
den1=[1 -0.6];
X=filt(num1,den1)

pzmap(H);
title('pole-Zero plot for H')

figure;
pzmap(X)
title('pole-Zero plot for X')

Y=H*X
figure;
pzmap(Y)
title('pole-Zero plot for Y')

%----Q4_1---end
figure;
impz(num,den);
title('impulse responce of H(z)')% impulse responce of H(Z)

[num2,den2]=tfdata(Y)


num2=[3 -2 -1 0];
den2=[1 -0.8500 0.0250 0.0750];

figure;
impz(num2,den2)
title('impulse responce of Y(z)')





