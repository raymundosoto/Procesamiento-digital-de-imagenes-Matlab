clear all
close all
clc

img = imread('estrellas.jpg');
img_gris = rgb2gray(img);

%Binarización
umbral = 0.5;
img_bn = im2bw(img_gris, umbral);

figure(1)
imshow(img_gris)
figure(2)
imshow(img_bn)


%% erosion

%ES = [1 1]; %elemento estructurante

ES = ones(3);     %Crea una matriz de ones de nxn (elemento estructurante

img_bn_dil = imerode(img_bn, ES); %erosion

figure(3)
imshow(img_bn_dil)