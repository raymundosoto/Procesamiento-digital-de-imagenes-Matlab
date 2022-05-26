clear
clear all
clc

img = imread('paisaje_1.jpg'); % Lectura de imagen
figure(1)
imshow(img)   %Visualiaci�n de la imagen

%% Visualizar a color los 3 canales


%% Visualizaci�n de canal R (Rojo)
img_R = img;
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;
% figure(1)
% imshow(img_R)

%% Visualizaci�n de canal G (Verde)
img_G = img;
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;
% figure(2)
% imshow(img_G)

%% Visualizaci�n de canal B (Azul)
img_B = img;
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;

% Visualizaci�n de los 3 canales
figure(3)
imshow([img_R; img_G; img_B])
%% Combinaci�n de im�genes

img_RG = img_R + img_G;  %Combinaci�n rojo-verde
img_RB = img_R + img_B;  %Combinaci�n rojo-azul
img_GB = img_G + img_B;  %Combinaci�n verde-azul

figure
imshow([img_RG;img_RB;img_GB])

%% Visualizaci�n de los 6 im�genes
figure
imshow([img_R, img_RG;img_G, img_RB;img_B, img_GB])















