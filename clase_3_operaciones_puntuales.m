clear
clear all
clc

img = imread('mono.jpg'); % Lectura de imagen
figure(1)
imshow(img)   %Visualiación de la imagen

% Objetivo de las operaciones es aumentar el brillo
% o disminuir el brillo

%%  Suma de una constante
c = 50;
img_suma = img + c ;
%%  Resta de una constante
c = 100;
img_resta = img - c ;
%% Multiplicación por una constante
c = 0.1;
img_multip = img.*c ;

%% División por una constante
c = 4;
img_div = img./c;

%% Negativo de imagen

img_neg = 255 - img;

figure(2)
imshow(img_neg)