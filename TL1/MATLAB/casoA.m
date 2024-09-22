clear all
close all

data = readmatrix('CASOA', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:, 1);
vin = data(:, 2);
vo = data(:, 3);

figure;
plot(tiempo, vo, 'b', 'LineWidth', 2); % 'b' para azul, 'LineWidth' para grosor
hold on;
plot(tiempo, vin, 'r', 'LineWidth', 2); % 'r' para rojo, 'LineWidth' para grosor
%%ylim([-0.5, 0.5]);
%%xlim([0.005, 0.008]);
legend('Vo', 'Vin');
xlabel('Tiempo [s]');
ylabel('Tensión [V]');
grid on;
title('Caso A - LTSpice');

fprintf(max(vo)/max(vin));

