clc;
clear all;
close all;

syms z n a
b=heaviside(n);

y= a^n*b;

y1=ztrans(y)

x=simplifyFraction(iztrans(y1))
disp(x)