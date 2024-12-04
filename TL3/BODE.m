clear all
close all

% quiero leer los datos de bode macromodelo . txt y graficarlos

% leo los datos

% Leer el archivo TSV
fileID = fopen('Respuesta_En_Frecuencia_Macromodelo.txt', 'r');
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
grid on;
xlabel('Frecuencia (Hz)');
ylabel('Ganancia (dB)');
title('Respuesta en Frecuencia del Macromodelo');


