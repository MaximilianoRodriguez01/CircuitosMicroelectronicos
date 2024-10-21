clear all
close all

re = 1000;
rb = 82e3;
rs = 50;

vcc = 10.13;
vbb = 2.994;

vbe = 0.7;
b = 246;

icq = (vbb - vbe)/(rb/b + re);
VCE = vcc - (re)*(vbb - 0.7)/(rb/b + re);

gm = icq/25.9e-3;
rpi = b/gm;

rib = rpi + b*re;
ri = paralelo(rib, rb);

roe = (1/b)*(paralelo(rs,rb)+rpi);

ro = paralelo(roe, re);

AV = (gm*re)/(1+gm*re);

AVS = AV * (ri /(ri+rs));

Z = vcc - VCE;



% Defino la función paralelo para calcular resistencias en paralelo
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
end