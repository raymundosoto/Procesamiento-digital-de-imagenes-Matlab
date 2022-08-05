clear all
close all
clc
img = imread('document.jpg');
img = rgb2gray(img);
figure(1)
imshow(img)
%% Umbralización
umbral = .3;
img_bn = im2bw(img, umbral);
figure(2)
imshow(img_bn)

%% Binarizacion con imbinarize()
img_bn_mn = imbinarize(img, 'adaptive', 'ForegroundPolarity', 'dark', 'Sensitivity', 0.4);
figure(3)
imshow(not(img_bn_mn))