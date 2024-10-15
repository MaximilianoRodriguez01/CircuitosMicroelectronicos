clear all
close all

re = 1000;
rb = 82e3;
rs = 50;

vcc = 10;
vbb = 3;

vbe = 0.7;
b = 200;

icq = (vbb - vbe)/(rb/b + re);
VCE = vcc - (re)*(vbb - 0.7)/(rb/b + re);

gm = icq/25.9e-3;
rpi = b/gm;

rib = rpi + b*re;
ri = paralelo(rib, rb);

roe = (1/b)*(paralelo(rs,rb)+rpi);

ro = paralelo(roe, re);

AV = (gm*rb)/(1+gm*rb);

AVS = ri /(ri+rs);

paraleloR = paralelo(re,4700);

% Rango de VCE
VCE_barrido = linspace(0, vcc, 1000); % Genera 1000 puntos desde 0 hasta VCC

% Calcula IC usando la ecuación de la recta de carga
rce = -VCE_barrido / re + vcc/re;
rcd = -(VCE_barrido-VCE)/(paraleloR) + icq;

% Grafica la recta de carga
figure;
plot(VCE_barrido, rce, 'b', 'LineWidth', 2);
hold on
plot(VCE_barrido, rcd, 'r', 'LineWidth', 2);
plot(VCE, icq, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
%plot(9.69, 0, 'o', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

% Curvas ideales del transistor para diferentes IB
for ib = linspace((icq / b), ((icq * 5) / b), 5)  % Valores de IB entre 0.1 mA y 1 mA
    ic_curve = b * ib * (1 - exp(-VCE_barrido / 0.025));  % Aproximación de IC
    plot(VCE_barrido, ic_curve, 'k--', 'LineWidth', 1);
end

% Configuración de la gráfica
xlabel('V_{CE} (V)');
ylabel('I_C (A)');
title('Recta de Carga del Transistor y Curva Ideal');
grid on;
legend('Recta de Carga', 'Curva dinámica', 'Punto Q');
hold off;

% Defino la función paralelo para calcular resistencias en paralelo
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
end
