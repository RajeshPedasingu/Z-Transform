clc;
clear all;
close all;


%--
syms z 

X1 = 6*z^2+3*z+2+3*z^-1 +4*z^-2;
X2 = 4*z+7+5*z^-1 +6*z^-2;

X=simplifyFraction(X1*X2)

% x1=(iztrans(X));
% x2=iztrans(X2);

x1=[6 3 2 3 4];
p1=-2; %left most index of x1
x2=[4 7 5 6];
p2=-1;% left most index of x2
L=length(x1)+length(x2)-1;
n=(p1+p2):((L-1)+(p1+p2));
x3=conv(x1,x2)
stem(n,x3)
title('using conv function')
xlabel('samples(n)')
ylabel('amplitude')
grid on

X4=iztrans(X)











