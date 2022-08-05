clear all
close all
clc

img = imread('monedas.jpg');
img = rgb2gray(img);

filtro = fspecial('motion', 100, 90);

img_filtro = imfilter(img, filtro);

figure(1)
imshow(img)
figure(2)
imshow(img_filtro)

%% Extraccion de bordes

img_borde = edge(img);
figure(3)
imshow(img_borde)


