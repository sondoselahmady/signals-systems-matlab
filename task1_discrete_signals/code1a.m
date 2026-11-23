clc;
clear all;
close all;

n = -6:6;
g = (-0.25).*(n>=-3 & n<=1) + 3.*(n>=2 & n<=6);

figure;
stem(n,g);
xlabel('n');
ylabel('g[n]');
title('g[n]');
