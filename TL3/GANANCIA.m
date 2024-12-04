clear all
close all

% quiero leer los datos de ganancia av macromodelo . txt y graficarlos

% leo los datos


data = readmatrix('30m_AV_Macromodelo.txt', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:,1);
vin = data(:,2);
vout = data(:,3);

% grafico

figure
plot(tiempo, vin, 'r')
hold on
plot(tiempo, vout, 'b')
xlabel('Tiempo [s]')
ylabel('Tension [V]')
xlim([0 4e-5])
legend('Vin', 'Vout')
title('Vin y Vout en funcion del tiempo')
grid on




