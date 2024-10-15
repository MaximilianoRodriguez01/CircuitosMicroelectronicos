clear all
close all

%% leo de mps.txt vin y vout

data = readmatrix('DiseñoCircuitoTL2MPS', 'FileType', 'text', 'Delimiter', '\t');

data2 = readmatrix('DiseñoCircuitoTL2MPS_AV0', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:, 1);
vin = data(:, 2);
vo = data(:, 3);

tiempo2 = data2(:, 1);
vin2 = data2(:, 2);
vo2 = data2(:, 3);


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
title('Ganancia del Amplificador - LTSpice');

figure;
plot(tiempo2, vo2, 'b', 'LineWidth', 2); % 'b' para azul, 'LineWidth' para grosor
hold on;
plot(tiempo2, vin2, 'r', 'LineWidth', 2); % 'r' para rojo, 'LineWidth' para grosor
%%ylim([-0.5, 0.5]);
%%xlim([0.005, 0.008]);
legend('Vin', 'Vo');
xlabel('Tiempo [s]');
ylabel('Tensión [V]');
grid on;
title('Ganancia del Amplificador en Vacío - LTSpice');
