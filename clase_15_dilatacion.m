clear all
close all
clc

img = imread('estrellas.jpg');
img_gris = rgb2gray(img);

%Binarización
umbral = 0.4;
img_bn = im2bw(img_gris, umbral);

figure(1)
imshow(img_gris)
figure(2)
imshow(img_bn)


%% Dilatación

%ES = [1 1]; %elemento estructurante

ES = ones(10);     %Crea una matriz de ones de nxn (elemento estructurante

img_bn_dil = imdilate(img_bn, ES); %dilatación

figure(3)
imshow(img_bn_dil)






