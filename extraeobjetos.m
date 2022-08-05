clear all
close all
clc

im = imread('avellanas.jpg');
img_gris = rgb2gray(im);
figure(1)
montage({im, img_gris})

umbral = 0.5;
img_bn = imbinarize(img_gris, 'adaptive', 'ForegroundPolarity', 'dark', ...
    'sensitivity', umbral);
img_bn = not(img_bn);
img_bn = imfill(img_bn, 'holes');

ES = ones(4);
img_bn = imopen(img_bn, ES);
figure(2)
imshow(img_bn)

img_bn = uint8(img_bn);
img_extr = im.*img_bn;
figure(3)
imshow(img_extr)

