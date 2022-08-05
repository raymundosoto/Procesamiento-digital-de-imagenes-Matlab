clear all
close all
clc

img = imread('frase.jpg');
img_gris = rgb2gray(img);
figure(1)
montage({img, img_gris})

umbral = 0.9;
img_bn = im2bw(img_gris, umbral);
img_bn = not(img_bn);

ES = ones(3)
img_bn_ero = imerode(img_bn, ES);

fronteras = img_bn - img_bn_ero;

figure(2)
imshow(img_bn)
figure(3)
imshow(fronteras)