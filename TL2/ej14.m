clear global
close all

re = 319;
rb = 82e3;
rs = 50;

vbe = 0.7;
b = 200;
rc = 1000;

icq = 0.0087;

gm = icq/25.9e-3;

vbb = 5;
vcc = 18;

rpi = b/icq;

rib = rpi + b*re;
ri = paralelo(rib, rb);

roe = (1/b)*(paralelo(rs,rb)+rpi);

ro = paralelo(roe, re);

vce = vcc - (rc + re)*(vbb - 0.7)/(rb/b + re);

AV = (gm*rb)/(1+gm*rb);

AVS = ri /(ri+rs);



% Defino funcion que hace paralelos de resistencias
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
  end