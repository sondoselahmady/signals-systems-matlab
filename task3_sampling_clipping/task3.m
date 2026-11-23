clc;
clear;
close all;

str_id = input('Please enter Student ID: ', 's');

a = str2double(str_id(end-2));
b = str2double(str_id(end-1));
c = str2double(str_id(end));

if a == 0, a = 2; end
if b == 0, b = 2; end
if c == 0, c = 2; end

fprintf('Processing for ID parameters: a=%d, b=%d, c=%d\n', a, b, c);

T_total = 60; 
t_cont = linspace(0, T_total, 6000); 
fs = 50;
t_disc = 0 : 1/fs : T_total; 

sig1 = @(t) a * cos(pi + t);
sig2 = @(t) 3 * b * sin(t);
sig3 = @(t) (t.^c) * b .* sin(2*t + pi/2);
sig4 = @(t) (a * b * sin(t)) + 8;

signals = {sig1, sig2, sig3, sig4};
titles = {
    sprintf('i) X(t) = a * cos(\\pi + t) \n X(t) = %d * cos(\\pi + t)', a), ...
    sprintf('ii) X(t) = 3 * b * sin(t) \n X(t) = 3 * %d * sin(t)', b), ...
    sprintf('iii) X(t) = t^c * b * sin(2t + \\pi/2) \n X(t) = t^%d * %d * sin(2t + \\pi/2)', c, b), ...
    sprintf('iv) X(t) = a * b * sin(t) + 8 \n X(t) = %d * %d * sin(t) + 8', a, b)
};

for k = 1:4
    create_figure(k, titles{k}, signals{k}, t_cont, t_disc);
end

function create_figure(fig_num, main_title, sig_func, t_c, t_d)
    figure(fig_num);
   
    y_cont = sig_func(t_c); % Continuous data
    y_disc = sig_func(t_d); % Sampled data
    y_clipped = y_disc;
    if max(abs(y_disc)) > 6
        y_clipped(y_clipped > 5) = 5;
        y_clipped(y_clipped < -5) = -5;
    end
    
    y_final = abs(y_clipped);
    
    % Original Signal
    subplot(4, 1, 1);
    plot(t_c, y_cont, 'b', 'LineWidth', 1);
    title('Original Signal');
    ylabel('Amplitude'); grid on;
    xlim([0 60]);
    
    % Sampled Signal
    subplot(4, 1, 2);
    stem(t_d, y_disc, 'Color', 'b', 'Marker', 'none'); 
    title('Sampled Signal (50 Hz)');
    ylabel('Amplitude'); grid on;
    xlim([0 60]);
    
    % Clipped Signal
    subplot(4, 1, 3);
    stem(t_d, y_clipped, 'Color', 'b', 'Marker', 'none');
    title('Clipped Signal');
    ylabel('Amplitude'); grid on;
    xlim([0 60]);
    ylim([-7 7]);

    % Final Output
    subplot(4, 1, 4);
    stem(t_d, y_final, 'Color', 'b', 'Marker', 'none');
    title('Final Output');
    xlabel('Time (s)'); ylabel('Amplitude'); grid on;
    xlim([0 60]);
    ylim([0 7]);
    
    sgtitle(main_title, 'FontSize', 12, 'FontWeight', 'bold');
end
