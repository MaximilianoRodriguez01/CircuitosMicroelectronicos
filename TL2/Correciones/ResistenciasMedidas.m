clear all
close all

data = readmatrix('VIN_VS_con100k', 'FileType', 'text', 'Delimiter', '\t');

data2 = readmatrix('RO_CON_VP', 'FileType', 'text', 'Delimiter', '\t');

MAXVIN = max(data(:, 2));
MINVIN = min(data(:, 2));

VIN = MAXVIN - MINVIN;

MAXVS = max(data(:, 3));
MINVS = min(data(:, 3));

VS = MAXVS - MINVS;

R_i = (VIN/VS)*100e3*(1/(1-(VIN/VS)));


MAXVP = max(data2(:, 3));
MINVP = min(data2(:, 3));

VP = MAXVP - MINVP;

MAX_VRO = max(data2(:, 2));
MIN_VRO = min(data2(:, 2));

VRO = MAX_VRO - MIN_VRO;

R_o = 45*(VRO/VP) * (1/(1-(VRO/VP)));

