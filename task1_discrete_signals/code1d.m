clc;
clear all;
close all;


n2 = -3:3;
g_2n = (-0.25).*(2*n2>=-3 & 2*n2<=1) + 3.*(2*n2>=2 & 2*n2<=6);

figure;
stem(n2,g_2n);
xlabel('n');
ylabel('g[2n]');
title('Problem 1(d): g[2n]');




n3 = -6:6;
g_n_over_2 = (-0.25).*((n3/2)>=-3 & (n3/2)<=1 & mod(n3,2)==0) ...
           + 3.*((n3/2)>=2 & (n3/2)<=6 & mod(n3,2)==0);

figure;
stem(n3,g_n_over_2);
xlabel('n');
ylabel('g[n/2]');
title('Problem 1(d): g[n/2]');