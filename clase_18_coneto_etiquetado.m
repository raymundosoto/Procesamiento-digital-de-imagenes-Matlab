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

figure(2)
imshow(img_bn)

%% Conteo y etiquetado

[img_label, n_objetos] = bwlabel(img_bn);
figure(3)
imshow(img_label)
disp(['El numero de objetos es ', num2str(n_objetos)])

RGB = label2rgb(img_label);  %Conversion a RGB 
figure(3)
imshow(RGB)





