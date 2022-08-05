clc
clear all
close all
%% Lectura de la imagen
img = imread('fruits.jpg');
figure(1)
imshow(img)
impixelinfo
%% Conversión a escala de grises
img_gris = rgb2gray(img);
% figure(2)
% imshow(img_gris)

%% Extracción de los canales a color R-G-B

img_R = img;
img_R(:,:,2) = 0;
img_R(:,:,3) = 0;
% figure(3)
% imshow(img_R)

img_G = img;
img_G(:,:,1) = 0;
img_G(:,:,3) = 0;
% figure(4)
% imshow(img_G)


img_B = img;
img_B(:,:,1) = 0;
img_B(:,:,2) = 0;
% figure(5)
% imshow(img_B)

figure(2)
subplot(2,2,1)
imshow(img_gris)
subplot(2,2,2)
imshow(img_R)
subplot(2,2,3)
imshow(img_G)
subplot(2,2,4)
imshow(img_B)


%% Combinación de canales

img_1 = img_R + img_G;
figure(3)
imshow(img_1)

img_2 = img_G + img_B;
figure(4)
imshow(img_2)

img_3 = img_R + img_B;
figure(5)
imshow(img_3)




