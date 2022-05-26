clear
clear all
clc

img = imread('paisaje_1.jpg'); % Lectura de imagen
figure(1)
imshow(img)   %Visualiación de la imagen

%% Visualizar a color los 3 canales


%% Visualización de canal R (Rojo)
img_R = img;
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;
% figure(1)
% imshow(img_R)

%% Visualización de canal G (Verde)
img_G = img;
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;
% figure(2)
% imshow(img_G)

%% Visualización de canal B (Azul)
img_B = img;
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;

% Visualización de los 3 canales
figure(3)
imshow([img_R; img_G; img_B])
%% Combinación de imágenes

img_RG = img_R + img_G;  %Combinación rojo-verde
img_RB = img_R + img_B;  %Combinación rojo-azul
img_GB = img_G + img_B;  %Combinación verde-azul

figure
imshow([img_RG;img_RB;img_GB])

%% Visualización de los 6 imágenes
figure
imshow([img_R, img_RG;img_G, img_RB;img_B, img_GB])















