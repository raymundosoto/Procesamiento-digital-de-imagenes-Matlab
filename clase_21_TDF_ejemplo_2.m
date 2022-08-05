clc
clear all
close all


k = 0:5;  %Vector de valores dek

Re = 3 - 2*cos((pi.*k)./3) + 4*cos(pi.*k) + 5*cos((4.*pi.*k)./3) + cos((5.*pi.*k)./3); %Parte Real

Im = -( - 2*sin((pi.*k)./3) + 4*sin(pi.*k) + 5*sin((4.*pi.*k)./3) + sin((5.*pi.*k)./3)); %Parte imaginaria


mag_xk = sqrt(Re.^2 + Im.^2);  %magnitud de x(k)


[k', Re', Im', mag_xk']

figure(1)

stem(k, mag_xk, '*r', 'Linewidth', 5)
axis([0 6, min(mag_xk), max(mag_xk)])
grid
xlabel('frecuencia')
ylabel('Magnitud')









