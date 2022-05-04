clc;
clear all;
close all;

%---Q1---
%   y[n] − 0.4y[n − 1] + 0.75y[n − 2] = 2.2403x[n] + 2.4908x[n − 1] + 2.2403x[n − 2]


num=[2.2403 2.4908 2.2403];
den=[1 -0.4 0.75];

impz(num,den);

%--end---

%---Q2---
%--y[n] + 0.71y[n − 1] − 0.46y[n − 1] − 0.62y[n − 3]= 0.9x[n] − 0.45x[n − 1] + 0.35x[n − 2] + 0.002x[n − 3]

num=[0.9 -0.45 0.35 0.002];
den=[1 0.25 0 -0.62];

[h,t]=impz(num,den,40);
figure;
stem(t,h)
title('impulse responce of the signal')
xlabel('samples(n)')
ylabel('amplitude')

%--end--



%---Q3---
num=[0.9 -0.45 0.35 0.002];
den=[1 0.25 0 -0.62];
n=0:40;
x=(n==0);%impulse signal lenth 40 samples

y=filter(num,den,x);
y=y(1:41);
n1=0:40;

figure;
subplot(2,1,1)
stem(t,h)
title('impulse responce of the signal using "IMPZ" command')
xlabel('samples(n)')
ylabel('amplitude')
subplot(2,1,2)
stem(n1,y)

title('impulse responce of the signal using "Filter" command')
xlabel('samples(n)')
ylabel('amplitude')
%--end--


%---Q4---
% unit stem responce for 40 samples

num=[0.9 -0.45 0.35 0.002];
den=[1 0.25 0 -0.62];
n=0:40;
x1=(n>=0);%unit step responce of  lenth 40 samples
y=filter(num,den,x1);
y=y(1:41);
n1=0:40;

figure;
subplot(2,1,1)
stem(n1,y)
title('unit step responce using "filter" command')
xlabel('samples(n)')
ylabel('amplitude')
subplot(2,1,2)
plot(n1,y)
title('unit step responce using "filter" command')
xlabel('time(t)')
ylabel('amplitude')
%--end--














