clear all
close all
clc

img = imread('astronaut.jpg');
img_gris = rgb2gray(img);
figure(1)
montage({img, img_gris})

umbral = 0.9;
img_bn = im2bw(img_gris, umbral);
img_bn = (img_bn);

figure(2)
imshow(img_bn)

esqueleto = bwskel(img_bn);
figure(3)
imshow(esqueleto)


