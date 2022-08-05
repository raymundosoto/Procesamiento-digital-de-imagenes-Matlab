clc
clear all
close all

%% Respuesta libre

t = 0:0.001: 10; %Tiempo

x_1 = 3.*exp((-1/3).*t);
figure(1)
plot(t,x_1)
grid

x_2 = 2.*exp((2/3).*t);
figure(2)
plot(t,x_2)
grid

x_3 = -8.*exp((-7/8).*t);
figure(3)
plot(t,x_3)
grid

