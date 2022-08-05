clc
clear all
close all

img = imread('radiografia.png');
img = imresize(img, 3); % con factor de escala 3
img_neg = 255 - img; %negativo de radiografía
img_menos = 0.9.*img; %disminución de brillo con multiplicación
img_neg_brillo = 1.3.*img_neg; %aumento de brillo a negativo

figure(1)
imshow(img)
figure(2)
imshow(img_neg)
figure(3)
imshow(img_menos)
figure(4)
imshow(img_neg_brillo)
