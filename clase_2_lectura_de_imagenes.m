close all
clear all

%% Lectura de imagen
img = imread('astronaut.jpg');  %lectura de imagen
figure(1)  %Creación de ventana
imshow(img) %visualización de la imagen
impixelinfo

%% Acceso a los pixeles

img_1 = img(1000:1600,1000:1500,:);
figure(2)
imshow(img_1)

%% Extraccion de canales

img_R = img(:,:,1);  %Extraccion del canal rojo
img_G = img(:,:,2);  %Extraccion del canal verde
img_B = img(:,:,3);  %Extraccion del canal azul

% figure(3)
% imshow(img_R)
% figure(4)
% imshow(img_G)
% figure(5)
% imshow(img_B)

figure(3)          %Creacion de matriz de imagenes
subplot(2,2,1)
imshow(img)
subplot(2,2,2)
imshow(img_R)
subplot(2,2,3)
imshow(img_G)
subplot(2,2,4)
imshow(img_B)

%% Gurdado de imagen digita

imwrite(img_B, 'canal_azul_astronauta.png');







