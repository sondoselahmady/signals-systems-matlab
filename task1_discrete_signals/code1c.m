clc;
clear all;
close all;

n = -6:6;
g = (-0.25).*(n>=-3 & n<=1) + 3.*(n>=2 & n<=6);

g_odd = (g - fliplr(g)) / 2;

figure;
stem(n,g_odd);
xlabel('n');
ylabel('g_o[n]');
title('Problem 1(c): Odd part of g[n]');