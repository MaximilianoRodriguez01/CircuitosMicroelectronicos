clear all
close all

data = readmatrix('VIN_VS_con100k', 'FileType', 'text', 'Delimiter', '\t');

data2 = readmatrix('PRUEBATOMI', 'FileType', 'text', 'Delimiter', '\t');

MAXVIN = max(data(:, 2));
MINVIN = min(data(:, 2));

VIN = MAXVIN - MINVIN;

MAXVS = max(data(:, 3));
MINVS = min(data(:, 3));

VS = MAXVS - MINVS;

R_i = (VIN/VS)*100e3*(1/(1-(VIN/VS)));



