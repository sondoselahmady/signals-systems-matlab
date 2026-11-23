clc
close all
clear all

td = 0.01;
t = -1:td:11;

z = 4*(t>=0 & t<=2) +2*(t>2 & t<=4) +4*(t>=6 & t<=8) +2*(t>8 & t<=10);

w = linspace(-2*pi,2*pi,length(t));
Z = sum(z'.*exp(-j*w.*t')*td);

figure
plot(t,z)
title('z(t)')
xlabel('t')
ylabel('Amplitude')

figure
plot(w,Z)
title('Fourier Transform of z(t)')
xlabel('\omega')
ylabel('|Z(\omega)|')
