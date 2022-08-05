clc
clear all
close all

t = 0:0.001:50; % Tiempo
x = (t>=0);  %entrada al sistema x(1) = 1
yf = 3 -3.*exp((-1/3).*t); %Respuesta forzada del sistema
yT = 3 - exp((-1/3).*t); % Respuesta total

figure(1)
plot(t,x, 'b') %grafica de la entrada
hold on
plot(t,yf, 'r')
grid
xlabel('Tiempo')
legend('Entrada al sistema', 'Salida del sistema')
hold off
axis([0 50 0 5])


figure(2)
plot(t, yT, 'm')
grid
legend('Respuesta total')
xlabel('Tiempo')
axis([0 50, 0 5])