clc;
clear all;
close all;

n = -6:6;
g = (-0.25).*(n>=-3 & n<=1) + 3.*(n>=2 & n<=6);

g_even = (g + fliplr(g)) / 2;

figure;
stem(n,g_even);
xlabel('n');
ylabel('g_e[n]');
title('Problem 1(b): Even part of g[n]');