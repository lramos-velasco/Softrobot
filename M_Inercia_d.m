function [H]=M_Inercia_d(q)
%% Parámetros de entrada
ri=0.00375; ro=0.015; m = 0.0544;
% Coordenadas de deformacion
l = q(1); phi = q(2); k = q(3);
H = zeros(3);

%% Diagonal 3; H(7:9,7:9)
H(1,1) = (m*(k^2*ri^2 + k^2*ro^2 + 4))/12;
H(1,2) = 0;
H(1,3) = (m*(4*k^3*l^3 - 12*sin(k*l) + k^5*l^3*ri^2 + k^5*l^3*ro^2 + 12*k*l*cos(k*l)))/(12*k^4*l^2);
H(2,1) = 0;
H(2,2) = (m*(4*sin(2*k*l) - 32*sin(k*l) + 24*k*l + 14*k^3*l*ri^2 + 14*k^3*l*ro^2 - 16*k^2*ri^2*sin(k*l) + k^2*ri^2*sin(2*k*l) - 16*k^2*ro^2*sin(k*l) + k^2*ro^2*sin(2*k*l)))/(16*k^3*l);
H(2,3) = 0;
H(3,1) = H(1,3);
H(3,2) = H(2,3);
H(3,3) = (m*(24*k*l - 48*sin(k*l) + 4*k^3*l^3 + k^5*l^3*ri^2 + k^5*l^3*ro^2 + 24*k*l*cos(k*l)))/(12*k^5*l);
