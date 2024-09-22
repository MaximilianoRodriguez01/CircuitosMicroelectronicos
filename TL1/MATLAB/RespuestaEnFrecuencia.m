clear all
close all

% Leer el archivo CSV
data = readmatrix('RespuestaEnFrecuencia.csv', 'Delimiter', ';');

% Extraer la tercera columna (frecuencias) y la cuarta columna (ganancias)
frecuencia = data(:, 3);
ganancia = data(:, 4);

ganancia_db = 20 * log10(ganancia); % Convertir a dB

% Graficar
semilogx(frecuencia, ganancia_db, 'o', 'LineWidth', 2); % Graficar puntos con grosor de línea 2
hold on; % Mantener el gráfico actual
semilogx(frecuencia, ganancia_db, '--', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
legend('Ganancia medida en DB', 'Interpolación lineal', 'Location', 'southwest', 'FontSize', 14, 'FontWeight', 'bold'); % Colocar la leyenda abajo a la izquierda
xlim([min(frecuencia) max(frecuencia)]);
title('Diagrama de Bode (Magnitud)', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Frecuencia [Hz]');
ylabel('Ganancia [dB]');
grid on;
hold off; % Liberar el gráfico

