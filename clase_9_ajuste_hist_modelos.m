clc
clear all
close all

img = imread('pic_contr_3.jpg');
figure(1)
imshow(img)
figure(2)
imhist(img)
img = double(img);

%% Constantes del modelo
m = min(img(:)); %valor mínimo
M = max(img(:)); %valor máximo
factor = 5.4; %Factor del ajuste lineal
% c1 = 0.01; %Valores del modelo de parabola
% c2 = 0.02;
% c3 = 0; 

% c1 = 8;       %valores del modelo de raíz cuadrada
% c2 = 1.5;
% k = 20;        %constante del ajuste logaritmico

k = 0.002; %k y c para modelo exponencial
c = 0.1; 



%% Modelos
%img_mejor = (img - m).*(255./(M-m)); % Stretching
%img_mejor = (img - m).*factor;  %ajuste lineal
%img_mejor = c1.*img.^2 + c2.*img + c3; % Modelo de parabola
%img_mejor = c1.*(img.^(1/2)) + c2; %modelo de raíz cuadrada
% img_mejor = 20.*log(img + 1); %ajuste logaritmico

img_mejor = k.*(((1+c).^(img))-1); %Modelo exponencial


%% 
img_mejor = uint8(img_mejor);

figure(3)
imshow(img_mejor)
figure(4)
imhist(img_mejor)



