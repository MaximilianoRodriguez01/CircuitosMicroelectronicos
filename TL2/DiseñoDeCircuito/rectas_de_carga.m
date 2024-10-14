% Valores dados
VCC = 10; % Voltaje de alimentación (V)
RE = 470; % Resistencia de emisor (Ohm)

% Rango de VCE
VCE = linspace(0, VCC, 1000); % Genera 100 puntos desde 0 hasta VCC

% Calcula IC usando la ecuación de la recta de carga
IC = -VCE / RE + VCC/RE;

i_C = (1.5e-3*470 - VCE + 9.3057)/470;

% Grafica la recta de carga
plot(VCE, IC, 'b', 'LineWidth', 2);
hold on
plot(VCE, i_C, 'r', 'LineWidth', 2);
plot(9.3057, 1.5e-3, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
xlabel('V_{CE} (V)');
ylabel('I_C (A)');
title('Recta de Carga del Transistor');
grid on;