clear all
close all

% example
% time	V(g1)	I(R3)
% 0.000000000000000e+00	0.000000e+00	0.000000e+00
% 4.882812361904632e-13	9.203885e-09	9.203885e-15
% 9.765624723809263e-13	1.840777e-08	1.840777e-14


data = readmatrix('ro_AV_Macromodelo.txt', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:,1);
vo = data(:,2);
io = data(:,3);

% grafico

figure;
yyaxis left;
plot(tiempo, vo, 'b', 'LineWidth', 2);
ylim([min(vo) - 0.01, max(vo) + 0.01]); % Ajustar los límites de la escala de tensión con márgenes
ylabel('Tensión [V]');

yyaxis right;
plot(tiempo, io, 'r', 'LineWidth', 2);
ylabel('Corriente [A]');
ylim([min(io) - 0.01 * abs(min(io)), max(io) + 0.01 * abs(max(io))]); % Ajustar los límites de la escala de corriente con márgenes

xlabel('Tiempo [s]');
legend('v_o', 'i_o');
title('v_o e i_o en función del tiempo');
xlim([min(tiempo) max(tiempo)]); % Ajustar los límites de la escala de tiempo

grid on;