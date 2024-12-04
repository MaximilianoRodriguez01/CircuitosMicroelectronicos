clear all
close all

% example
% time	V(g1)	I(R3)
% 0.000000000000000e+00	0.000000e+00	0.000000e+00
% 4.882812361904632e-13	9.203885e-09	9.203885e-15
% 9.765624723809263e-13	1.840777e-08	1.840777e-14


data = readmatrix('rin_AV_Macromodelo.txt', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:,1);
vin = data(:,2);
iin = data(:,3);

% grafico

figure;
yyaxis left;
plot(tiempo, vin, 'b', 'LineWidth', 2);
ylim([min(vin) - 0.01, max(vin) + 0.01]); % Ajustar los límites de la escala de tensión con márgenes
ylabel('Tensión [V]');

yyaxis right;
plot(tiempo, iin, 'r', 'LineWidth', 2);
ylabel('Corriente [A]');
ylim([min(iin) - 0.01 * abs(min(iin)), max(iin) + 0.01 * abs(max(iin))]); % Ajustar los límites de la escala de corriente con márgenes

xlabel('Tiempo [s]');
legend('Vin', 'Iin');
title('Vin e Iin en función del tiempo');
xlim([min(tiempo) max(tiempo)]); % Ajustar los límites de la escala de tiempo

grid on;