clc
clear all
close all

img = imread('img_10.jpeg');
figure(1)
imshow(img)
figure(2)
subplot(3,1,1)
imhist(img(:,:,1))
subplot(3,1,2)
imhist(img(:,:,2))
subplot(3,1,3)
imhist(img(:,:,3))


img = double(img);

%% Constantes del modelo
m = min(img(:)); %valor mínimo
M = max(img(:)); %valor máximo
factor = 2.0; %Factor del ajuste lineal
%  c1 = 0.04; %Valores del modelo de parabola
%  c2 = 0.05;
%  c3 = 0; 

%  c1 = 20;       %valores del modelo de raíz cuadrada
%  c2 = 0;
% c = 255./(log(1+M)) ;        %constante del ajuste logaritmico

k = 50; %k y c para modelo exponencial
c = 0.02; 



%% Modelos
%img_mejor = (img - m).*(255./(M-m)); % Stretching
%img_mejor = (img - m).*factor;  %ajuste lineal
%img_mejor = c1.*img.^2 + c2.*img + c3; % Modelo de parabola
%img_mejor = c1.*(img.^(1/2)) + c2; %modelo de raíz cuadrada
%img_mejor = c.*log(img + 1); %ajuste logaritmico
img_mejor = k.*(((1+c).^(img))-1); %Modelo exponencial


%% 
img_mejor = uint8(img_mejor);
img = uint8(img);

figure(3)
imshow(img_mejor)
figure(4)
subplot(3,1,1)
imhist(img_mejor(:,:,1))
subplot(3,1,2)
imhist(img_mejor(:,:,2))
subplot(3,1,3)
imhist(img_mejor(:,:,3))


% img_mejor = histeq(img);
% figure(5)
% imshow(img_mejor)


