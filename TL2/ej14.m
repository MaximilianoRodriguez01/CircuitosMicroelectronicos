clear global
close all

re = 1000;
rb = paralelo(100e3, 820e3);
rs = 50;

vbe = 0.7;
b = 200;
rc = paralelo(1e3, 4.7e3);

vbb = 10;
vcc = 15;

rib = (200)*(rb/200 + re)/vbb-0.7 + b*re;
ri = paralelo(rib, rb);

roa = paralelo(rs, (rb + (200/(vbb - 0.7) *(rb/b + re))));

ro = paralelo(roa, re);

vce = vcc - (rc + re)*(vbb - 0.7)/(rb/b + re);



% Defino funcion que hace paralelos de resistencias
function [Rpar] = paralelo(R1, R2)
    Rpar = (R1 * R2) / (R1 + R2);
  end