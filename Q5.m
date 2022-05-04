clc;
clear all;
close all;
syms z n


oldparam=sympref('HeavisideAtOrigin', 1);
x=(2^-n)*heaviside(n-1);%( you should consider (2^-n) also.. -ve sign is must.
X1=simplifyFraction(ztrans(x));
X1=simplifyFraction(subs(X1,z,z^-1));

x2=((1/3)^n)*heaviside(n);
X2=simplifyFraction(ztrans(x2));
X=simplifyFraction(X1+X2); %from here convert into z^-1 terms and extract [num,den]

num1=[0 -5];
den1=[3 -7 2];

X=filt(num1,den1)%just to verify(no need)


%---end x---

y=5*((1/3)^n)*heaviside(n)-5*((2/3)^n)*heaviside(n);
Y=simplifyFraction(ztrans(y))
num2=[0 -15];
den2=[9 -9 2];
Y=filt(num2,den2);%just to verify(no need)

H=(Y/X)

num3=[45 -105 30];
den3=[45 -45 10];
h=filt(num3,den3);%just to verify(no need)




pzmap(H)
figure;
impz(num3,den3);% imulse response
title('impulse responce of H(z)')

% --part_b---
figure;
impz(num1,den1)
title('impulse responce of X(z)')

%--end--



%---part_c--
figure;
impz(num2,den2)
title('impulse responce of Y(z)')
%--end--






