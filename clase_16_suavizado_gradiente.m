clear all
close all
clc

img = imread('hoja.jpg');
img_gris = rgb2gray(img);
figure(1)
montage({img, img_gris})%

%suavizado morfologico
ES = ones(10);
img_gris_open = imopen(img_gris, ES); %Apertura
img_gris_suav = imclose(img_gris_open, ES); %Cierre para finalizar el suavizado
figure(2)
imshow(img_gris_suav)

%Gradiente morfologico
ES_A = ones(3);
img_bn = imbinarize(img_gris,0.8);
img_bn = not(img_bn);
img_bn = imclose(img_bn, ES_A);
img_bn = imerode(img_bn, ES_A);
figure(3)
imshow(img_bn)
% Extraccion de borde
ES_B = ones(3);
img_bn_dil = imdilate(img_bn, ES_B); %dilatacion
img_bn_ero = imerode(img_bn, ES_B); %erosion
img_bn_bordes = img_bn_dil - img_bn_ero;  %extraccion de borde

figure(4)
imshow(img_bn_bordes)













