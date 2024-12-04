clear all
close all

% Parámetros del MOSFET
Vth = -1; % Voltaje umbral (V)
k = 0.1;  % Constante del MOSFET (A/V^2)
VGS_values = [-0.92]; % Valores de VGS a simular

% Parámetros del circuito
VDD = 10;       % Voltaje de alimentación (V)
RD = 4700;       % Resistencia de drenaje (ohmios)
RS = 200;       % Resistencia de fuente (ohmios)

% Calcular punto Q (punto de operación)
VGS_Q = -0.92;                            % Voltaje de compuerta-fuente en el punto Q
ID_Q = k * (VGS_Q - Vth)^2;           % Corriente de drenaje en saturación
VDS_Q = VDD - ID_Q * RD;              % Voltaje de drenaje-fuente en el punto Q

% Rango de VDS
VDS = linspace(0, VDD, 1000); % Desde 0 a VDD

figure;
hold on;

% Generar curvas para diferentes valores de VGS
for VGS = VGS_values
    ID = zeros(size(VDS)); % Inicializar corriente ID

    % Calcular ID para cada región de operación
    for i = 1:length(VDS)
        if VGS < Vth
            % Región de corte
            ID(i) = 0;
        elseif VDS(i) < VGS - Vth
            % Región lineal
            ID(i) = k * (2 * (VGS - Vth) * VDS(i) - VDS(i)^2);
        else
            % Región de saturación
            ID(i) = k * (VGS - Vth)^2;
        end
    end

    % Graficar la curva para el valor actual de VGS
    plot(VDS, ID, 'LineWidth', 2, 'DisplayName', ['V_{GS} = ' num2str(VGS) ' V']);
end

% % Agregar la recta de carga estática
% ID_static = (- VDS) / 2350; % Ecuación de la recta de carga estática
% plot(VDS, ID_static, 'r--', 'LineWidth', 2, 'DisplayName', 'Recta de Carga Estática');

% Agregar la recta de carga dinámica
%ID_dynamic = -VDS/2350 + VDS_Q/2350; % Ecuación de la recta de carga dinámica
ID_dynamic = -(VDS-VDS_Q)/2350 + ID_Q; % Ecuación de la recta de carga dinámica
plot(VDS, ID_dynamic, 'm-.', 'LineWidth', 2, 'DisplayName', 'Recta de Carga Dinámica');

% Marcar el punto Q
plot(VDS_Q, ID_Q, 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g', 'DisplayName', 'Punto Q');

% Configuración de la gráfica
xlabel('V_{DS} (V)');
ylabel('I_D (A)');
title('Recta de carga dinámica');
grid on;
legend show;
hold off;
