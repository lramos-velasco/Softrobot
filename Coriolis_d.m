function [C]=Coriolis_d(q,dq)
%% Parámetros de entrada
ri=0.00375; ro=0.015; m = 0.0544;
% Coordenadas de deformacion
l = q(1); phi = q(2); k = q(3);
%--- Velocidad de deformacion
dl = dq(1); dphi = dq(2); dk = q(3);
C = zeros(3);

%% C(7:9,7:9)
C(1,1) = (dk*k*m*(ri^2 + ro^2))/12;
C(1,2) = -(dphi*m*(32*sin(k*l) - 4*sin(2*k*l) + 16*k^2*ri^2*sin(k*l) - k^2*ri^2*sin(2*k*l) + 16*k^2*ro^2*sin(k*l) - k^2*ro^2*sin(2*k*l) - 32*k*l*cos(k*l) + 8*k*l*cos(2*k*l) - 16*k^3*l*ri^2*cos(k*l) + 2*k^3*l*ri^2*cos(2*k*l) - 16*k^3*l*ro^2*cos(k*l) + 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^3*l^2);
C(1,3) = (dl*k*m*(ri^2 + ro^2))/12 - (2*dk*m*(k^3*l^3 - 3*sin(k*l) + 3*k*l*cos(k*l)))/(3*k^5*l^2);
C(2,1) = (dphi*m*(32*sin(k*l) - 4*sin(2*k*l) + 16*k^2*ri^2*sin(k*l) - k^2*ri^2*sin(2*k*l) + 16*k^2*ro^2*sin(k*l) - k^2*ro^2*sin(2*k*l) - 32*k*l*cos(k*l) + 8*k*l*cos(2*k*l) - 16*k^3*l*ri^2*cos(k*l) + 2*k^3*l*ri^2*cos(2*k*l) - 16*k^3*l*ro^2*cos(k*l) + 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^3*l^2);
C(2,2) = (dl*m*(32*sin(k*l) - 4*sin(2*k*l) + 16*k^2*ri^2*sin(k*l) - k^2*ri^2*sin(2*k*l) + 16*k^2*ro^2*sin(k*l) - k^2*ro^2*sin(2*k*l) - 32*k*l*cos(k*l) + 8*k*l*cos(2*k*l) - 16*k^3*l*ri^2*cos(k*l) + 2*k^3*l*ri^2*cos(2*k*l) - 16*k^3*l*ro^2*cos(k*l) + 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^3*l^2) - (dk*m*(12*sin(2*k*l) - 96*sin(k*l) + 48*k*l - 16*k^2*ri^2*sin(k*l) + k^2*ri^2*sin(2*k*l) - 16*k^2*ro^2*sin(k*l) + k^2*ro^2*sin(2*k*l) + 32*k*l*cos(k*l) - 8*k*l*cos(2*k*l) + 16*k^3*l*ri^2*cos(k*l) - 2*k^3*l*ri^2*cos(2*k*l) + 16*k^3*l*ro^2*cos(k*l) - 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^4*l);
C(2,3) = -(dphi*m*(12*sin(2*k*l) - 96*sin(k*l) + 48*k*l - 16*k^2*ri^2*sin(k*l) + k^2*ri^2*sin(2*k*l) - 16*k^2*ro^2*sin(k*l) + k^2*ro^2*sin(2*k*l) + 32*k*l*cos(k*l) - 8*k*l*cos(2*k*l) + 16*k^3*l*ri^2*cos(k*l) - 2*k^3*l*ri^2*cos(2*k*l) + 16*k^3*l*ro^2*cos(k*l) - 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^4*l);
C(3,1) = (dk*m*(24*sin(k*l) + 4*k^3*l^3 - 12*k^2*l^2*sin(k*l) + k^5*l^3*ri^2 + k^5*l^3*ro^2 - 24*k*l*cos(k*l)))/(12*k^5*l^2) + (dl*m*(6*sin(k*l) + k^3*l^3 - 3*k^2*l^2*sin(k*l) - 6*k*l*cos(k*l)))/(3*k^4*l^3);
C(3,2) = (dphi*m*(12*sin(2*k*l) - 96*sin(k*l) + 48*k*l - 16*k^2*ri^2*sin(k*l) + k^2*ri^2*sin(2*k*l) - 16*k^2*ro^2*sin(k*l) + k^2*ro^2*sin(2*k*l) + 32*k*l*cos(k*l) - 8*k*l*cos(2*k*l) + 16*k^3*l*ri^2*cos(k*l) - 2*k^3*l*ri^2*cos(2*k*l) + 16*k^3*l*ro^2*cos(k*l) - 2*k^3*l*ro^2*cos(2*k*l)))/(32*k^4*l);
C(3,3) = (dl*m*(24*sin(k*l) + 4*k^3*l^3 - 12*k^2*l^2*sin(k*l) + k^5*l^3*ri^2 + k^5*l^3*ro^2 - 24*k*l*cos(k*l)))/(12*k^5*l^2) - (dk*m*(12*k*l - 30*sin(k*l) + k^3*l^3 + 3*k^2*l^2*sin(k*l) + 18*k*l*cos(k*l)))/(3*k^6*l);



