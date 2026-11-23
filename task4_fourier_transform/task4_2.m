clc
close all
clear all

td = 0.01;
t = -1:td:6;

y = 2*(t>=0 & t<=1) -2*(t>1 & t<=2) +2*(t>=3 & t<=4) -2*(t>4 & t<=5);

w = linspace(-2*pi,2*pi,length(t));
Y = sum(y'.*exp(-j*w.*t')*td);

figure
plot(t,y)
title('y(t)')
xlabel('t')
ylabel('Amplitude')

figure
plot(w,Y)
title('Fourier Transform of y(t)')
xlabel('\omega')
ylabel('|Y(\omega)|')
