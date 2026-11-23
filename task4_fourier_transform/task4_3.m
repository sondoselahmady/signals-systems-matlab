clc;
clear all;
close all;

td = 0.01;
t = -1:td:8;

w = (t>=0 & t<=2).*(t) + (t>2 & t<=3).*(6 -2.*t) + (t>=4 & t<=6).*(t-4) + (t>6 & t<=7).*(14 -2.*t);

figure
plot(t,w)
title('w(t)')
xlabel('t')
ylabel('Amplitude')
grid on

omega = linspace(-2*pi, 2*pi, length(t));
W = sum(w'.*exp(-j*omega.*t')*td);

figure
plot(omega,W)
title('Fourier Transform of w(t)')
xlabel('\omega')
ylabel('|W(\omega)|')

