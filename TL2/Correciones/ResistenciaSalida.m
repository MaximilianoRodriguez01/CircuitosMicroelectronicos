clear all
close all

data1 = readmatrix('VO_CON_CARGA', 'FileType', 'text', 'Delimiter', '\t');
data2 = readmatrix('VO_VACIO', 'FileType', 'text', 'Delimiter', '\t');
data3 = readmatrix('VIN', 'FileType', 'text', 'Delimiter', '\t');
data4 = readmatrix('VS', 'FileType', 'text', 'Delimiter', '\t');


MAXVO_CARGA = max(data1(:, 2));
MINVO_CARGA = min(data1(:, 2));

VO_CON_CARGA = MAXVO_CARGA - MINVO_CARGA;

MAXVO_VACIO = max(data2(:, 2));
MINVO_VACIO = min(data2(:, 2));

VO_VACIO = MAXVO_VACIO - MINVO_VACIO;

MAXVIN = max(data3(:, 2));
MINVIN = min(data3(:, 2));

VIN = MAXVIN - MINVIN;


Avo = (VO_VACIO) / VIN;

R_o = (Avo*VIN - VO_CON_CARGA)/(VO_CON_CARGA/4700);






