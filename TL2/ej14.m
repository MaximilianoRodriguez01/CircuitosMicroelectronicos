clear variables
close all


re = 1000;
rb = 82e3;
rs = 50;
vcc = 10;

vbe = 0.7;
b = 800;

icq = (vcc - vbe)/(rb/b + re);

gm = icq/25.9e-3;
rpi = b/icq;

rib = rpi + b*re;
ri = paralelo(rib, rb);

roe = (1/b)*(paralelo(rs,rb)+rpi);

ro = paralelo(roe, re);

VCE = vcc - (re)*(vcc - 0.7)/(rb/b + re);

AV = (gm*rb)/(1+gm*rb);

AVS = ri /(ri+rs);

% Defino funcion que hace paralelos de resistencias
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
  end