clear all
close all
clc

img = imread('monedas.jpg');
img_gris = rgb2gray(img);
figure(1)
%montage({img, img_gris})
imshow(img)
umbral = 0.8;
img_bn = im2bw(img_gris, umbral);
img_bn = not(img_bn);
ES = ones(7);
img_bn = imclose(img_bn, ES);
img_bn = imfill(img_bn, 'holes');  %Rellenar hoyos en la imagen binaria


connect = 8;  %Numero de vecinos o conectividad
fronteras = bwperim(img_bn, connect); %Extraccion de perimetro

figure(2)
imshow(img_bn)
figure(3)
imshow(fronteras)

%% Extracción de objetos
mascara = img_bn;
mascara = uint8(mascara);

objetos = mascara.*img;  % Multiplicacion de imagen a color por mascara binaria

figure(4)
imshow(objetos)






