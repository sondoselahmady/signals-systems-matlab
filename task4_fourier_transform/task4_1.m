clc
close all
clear all

td = 0.01;
t = -1:td:7;

x = ((t>=0 & t<=2) + (t>=4 & t<=6));

w = linspace(-2*pi,2*pi,length(t));
X = sum(x'.*exp(-j*w.*t')*td);

figure
plot(t,x)
title('x(t)')
xlabel('t')
ylabel('Amplitude')

figure
plot(w,X)
title('Fourier Transform of x(t)')
xlabel('\omega')
ylabel('|X(\omega)|')
