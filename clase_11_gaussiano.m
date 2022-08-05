clc
clear all
close all

img = imread('platanos.jpg'); 
gauss = fspecial('gaussian', [20,20], 2.25); %Kernel o filtro
img = imnoise(img, 'salt & pepper'); % Agregar ruido a la imagen
img_filter = imfilter(img, gauss);  %imagen filtrada
figure(1)
imshowpair(img, img_filter, 'montage')



