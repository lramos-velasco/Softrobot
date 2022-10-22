function [Gq] = gr_d(q)
% Parametros de entrada
m = 0.0544; g = -9.81;
% Coordenadas de deformacion
l = q(1); phi = q(2); k = q(3);
Gq =  [g*m*((2*sin((k*l)/2)^2)/(k^2*l^2) - (2*cos((k*l)/2)*sin((k*l)/2))/(k*l));
                                        0;
       -g*m*((2*cos((k*l)/2)*sin((k*l)/2))/k^2 - (4*sin((k*l)/2)^2)/(k^3*l))];
  