clear all
close all

% crear vector con 100
% 400
% 500
% 600
% 700
% 800
% 900
% 1000
% 1100
% 1300
% 1600
% 1900
% 2200
% 5000
% 10000
% 50000
% 100000
% 150000
% 500000
% 1000000
% 1.5e6
% 2,00E+06
% 2.5e6
% 3,00E+06
% 3.5e6
% 4,00E+06
% 5,00E+06
% 6,00E+06
% 7.2e6
% 8,00E-06
% 9,00E+06
% 1,00E+07


frecuencias = [400 500 600 700 800 900 1000 1100 1300 1600 1900 2200 5000 10000 50000 100000 150000 500000 1000000 1.5e6 2e6 2.5e6 3e6 3.5e6 4e6 5e6 6e6 7.2e6 8e6 9e6];

vin = 200e-3;

% crear vector vo1 
% 0.44
% 960
% 1.12
% 1.22
% 1,32
% 1,42
% 1,48
% 1,56
% 1,58
% 1.64
% 1.72
% 1.76
% 1.8
% 1.86
% 1.86
% 1.86
% 1.86
% 1.86
% 1.86
% 1.80
% 1.70
% 1.58
% 1.44
% 1.32
% 1.22
% 1.14
% 8,60E-01

vo1 = [0.96 1.12 1.22 1.32 1.42 1.48 1.56 1.58 1.64 1.72 1.76 1.8 1.86 1.86 1.86 1.86 1.86 1.86 1.8 1.7 1.58 1.44 1.32 1.22 1.14 0.86];

% crear vector vo2
% 960
% 1.12
% 1.22
% 1,32
% 1,42
% 1,48
% 1,56
% 1,58
% 1.64
% 1.72
% 1.76
% 1.8
% 1.86
% 1.86
% 1.86
% 1.86
% 1.86
% 1.86
% 1.84
% 1.82
% 1.80
% 1.80
% 1.70
% 1.62
% 1.52
% 1.40
% 1.32
% 1.26
% 1.14
% 1,02

vo2 = [0.96 1.12 1.22 1.32 1.42 1.48 1.56 1.58 1.64 1.72 1.76 1.8 1.86 1.86 1.86 1.86 1.86 1.86 1.84 1.82 1.8 1.75 1.7 1.62 1.54 1.42 1.32 1.22 1.14 1.02];

vo1db = 20*log10(vo1/vin);
vo2db = 20*log10(vo2/vin);

figure();
semilogx(frecuencias(1:length(vo2db)), vo2db, '--r', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
hold on
semilogx(frecuencias(1:length(vo1db)), vo1db, '--b', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
semilogx(frecuencias(1:length(vo2db)), vo2db, 'or', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
semilogx(frecuencias(1:length(vo1db)), vo1db, 'ob', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
grid on;
xlabel('Frecuencia (Hz)');
ylabel('Ganancia (dB)');
title('Respuesta en Frecuencia');
legend('Punta activa', 'Punta x10');
