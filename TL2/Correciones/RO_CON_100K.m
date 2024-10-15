clear all
close all

data = readmatrix('VO_EN_VACIO_CON_100K', 'FileType', 'text', 'Delimiter', '\t');

data2 = readmatrix('VO_VACIO_100K', 'FileType', 'text', 'Delimiter', '\t');


MAXVO = max(data(:, 2));
MINVO = min(data(:, 2));

VO = MAXVO - MINVO;

MAXVO_CARGA = max(data2(:, 2));
MINVO_CARGA = min(data2(:, 2));

VO_CARGA = MAXVO_CARGA - MINVO_CARGA;

R_O = (VO-VO_CARGA)/(VO_CARGA/4700);


