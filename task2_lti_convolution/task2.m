clc;
clear all;
close all;

t = -30:0.01:30;

h1 = (t + 1 > 0);

h2 = zeros(size(t));
h2(abs(t + 1) < 0.01/2) = 2/0.01;

h3 = (-3*t - 1 >= 0);

h4 = zeros(size(t));
h4(abs(t) < 0.01/2) = 2/0.01;

h12 = conv(h1, h2) * 0.01;
t12 = t(1)+t(1) : 0.01 : t(end)+t(end);

figure
plot(t12, h12, 'LineWidth', 1.5)
title('Impulse Response: h1 * h2');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

h12_resampled = interp1(t12, h12, t, 'linear', 0);
h123 = h12_resampled + h3;

figure
plot(t, h123, 'LineWidth', 1.5)
title('Impulse Response: (h1 * h2) + h3');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

heq = conv(h123, h4) * 0.01;
teq = t(1)+t(1) : 0.01 : t(end)+t(end);

figure
plot(teq, heq, 'LineWidth', 1.5)
title('Total Equivalent Impulse Response h_{eq}(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

x = zeros(size(t));
x(abs(t + 1) < 0.01/2) = 1/0.01;
x(abs(t - 1) < 0.01/2) = 3/0.01;

y = conv(x, heq) * 0.01;
ty = t(1)+teq(1) : 0.01 : t(end)+teq(end);

figure
plot(ty, y, 'LineWidth', 1.5)
title('Final System Output y(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
set(gca, 'GridLineStyle', ':', 'GridColor', 'k', 'GridAlpha', 0.5);

axis([-40 40 0 24]);
