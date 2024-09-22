clear all
close all



% Leer el archivo TSV
fileID = fopen('BODEOPAMP.txt', 'r');
data2 = textscan(fileID, '%f %s', 'Delimiter', '\t', 'HeaderLines', 1);
fclose(fileID);

% Extraer las frecuencias y ganancias
frecuencia2 = data2{1};
ganancia_str = data2{2};

% Procesar las ganancias para extraer los valores en dB
ganancia_db2 = zeros(length(ganancia_str), 1);
for i = 1:length(ganancia_str)
    % Extraer el valor en dB de la cadena
    ganancia_db2(i) = sscanf(ganancia_str{i}, '(%fdB,%*f)');
end

% Graficar
figure;
semilogx(frecuencia2, ganancia_db2, 'b', 'LineWidth', 2); % Agregar línea punteada con grosor de línea 2
hold on;


yline(17, '--', 'Color', [0, 0, 0]);
plot(91.89e3, 17.001416, 'o', 'MarkerSize', 5, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k');

xline(91.89e3, '--', 'Color', [0, 0, 0]);

legend('Curva obtenida en LTSpice', 'Location', 'southwest','FontSize', 12, 'FontWeight', 'bold');

ylim([-12 25]);
title('Diagrama de Bode (Magnitud)', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Frecuencia [Hz]');
ylabel('Ganancia [dB]');
grid on;
hold off;