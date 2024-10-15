clear all
close all
data = readmatrix('Vs_Vin', 'FileType', 'text', 'Delimiter', '\t');

datavin = readmatrix('VIN', 'FileType', 'text', 'Delimiter', '\t');

data2 = readmatrix('VO_CON_CARGA', 'FileType', 'text', 'Delimiter', '\t');


data3 = readmatrix('VOUT', 'FileType', 'text', 'Delimiter', '\t');


MAXVOUT = max(data3(:, 2));
MINVOUT = min(data3(:, 2));

VOUT = MAXVOUT - MINVOUT;




tiempo = data(:, 1);
vin = data(:, 2);
vo = data(:, 3);

VO_CON_CARGA = data2(:, 2);
MAXIMO_VO_CON_CARGA = max(VO_CON_CARGA);
MINIMO_VO_CON_CARGA = min(VO_CON_CARGA);

VINDATA = datavin(:, 2);
MAXIMOVIN = max(VINDATA);
MINIMOVIN = min(VINDATA);

VIN = MAXIMOVIN - MINIMOVIN;

VO = MAXIMO_VO_CON_CARGA - MINIMO_VO_CON_CARGA;

maximo_vo = max(vo);
minimo_vo = min(vo);

maximo_vin = max(vin);
minimo_vin = min(vin);

V_o = maximo_vo - minimo_vo;
V_in = maximo_vin - minimo_vin;

Rs = 50;

Avo = V_o / VIN;

R_o = (Avo*VIN - VOUT)/(VOUT/4700);
