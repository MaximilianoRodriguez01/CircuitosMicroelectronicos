clear all
close all

data = readmatrix('Vs_Vin', 'FileType', 'text', 'Delimiter', '\t');

tiempo = data(:, 1);
vs = data(:, 3);
vin = data(:, 2);

maximo_vs = max(vs);
minimo_vs = min(vs);

maximo_vin = max(vin);
minimo_vin = min(vin);

V_s = maximo_vs - minimo_vs;
V_in = maximo_vin - minimo_vin;

Rs = 100e3;



Rin = Rs*(V_in/(V_s-V_in));