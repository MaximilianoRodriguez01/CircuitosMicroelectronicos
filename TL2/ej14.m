clear global
close all

re = 319;
rb = 100e3;
rs = 50;

vbe = 0.7;
b = 200;
rc = 1000;

icq = 11e-3;

gm = icq/25.9e-3;

vbb = 10;
vcc = 18;

rpi = b/icq;

rib = (b)*(rb/b + re)/vbb-0.7 + b*re;
ri = paralelo(rib, rb);

roe = (1/b)*(paralelo(rs,rb)+rpi*b);

ro = paralelo(roe, re);

vce = vcc - (rc + re)*(vbb - 0.7)/(rb/b + re);

AV = (gm*rb)/(1+gm*rb);



% Defino funcion que hace paralelos de resistencias
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
  end