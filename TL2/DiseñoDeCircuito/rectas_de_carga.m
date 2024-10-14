% Valores dados
VCC = 10; % Voltaje de alimentación (V)
RE = 470; % Resistencia de emisor (Ohm)

% Rango de VCE
VCE = linspace(0, VCC, 100); % Genera 100 puntos desde 0 hasta VCC

% Calcula IC usando la ecuación de la recta de carga
IC = -(-VCC + VCE) / RE;

i_C = (1.5e-3*470 - VCE + 9.3057)/470;

% Grafica la recta de carga
plot(VCE, IC, 'b', 'LineWidth', 2);
hold on
plot(VCE, i_C);
xlabel('V_{CE} (V)');
ylabel('I_C (A)');
title('Recta de Carga del Transistor');
grid on;