clc
clear all
close all

img = imread('piramides.jpg');
figure(1)
imshow(img)

img_gris = rgb2gray(img);
figure(2)
imshow(img_gris)

%% Negativo de imágenes

img_neg = 255 - img;  %Negativo de imagen RGB
img_gris_neg = 255 - img_gris; %Negativo de imagen en grises
figure(3)
imshow(img_neg)
figure(4)
imshow(img_gris_neg)

%% Negativo usando el máximo nivel de intensidad

maximo_RGB = max(img(:)); %maximo nivel de intensidad en la imagen RGB;
maximo_gris = max(img_gris(:)); %maximo nivel de intensidad en la imagen en grises;

img_neg = maximo_RGB - img;  %Negativo de imagen RGB
img_gris_neg = maximo_gris - img_gris; %Negativo de imagen en grises

figure(5)
imshow(img_neg)
figure(6)
imshow(img_gris_neg)

