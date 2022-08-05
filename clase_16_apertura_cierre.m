clc
close all
clear all

img_1 = imread('circulos_colores.jpg');
img_2 = imread('celulas_2.jpg');
img_2_gris = rgb2gray(img_2);
figure(1)
imshow(img_2)
%%
%Binarizacion
img_bn_2 = imbinarize(img_2_gris,'Adaptive', 'ForegroundPolarity', 'bright');
img_bn_2 = not(img_bn_2);

ES = ones(3); %Elemento estructural
img_bn_2_morf = imopen(img_bn_2, ES); %Apertura
img_bn_2_morf = imdilate(img_bn_2_morf, ES);
figure(2)
imshow(img_bn_2)
figure(3)
imshow(img_bn_2_morf)

%% 
figure(4)
imshow(img_1)
img_1_gris = rgb2gray(img_1);
figure(5)
imshow(img_1_gris)
img_1_bn = imbinarize(img_1_gris, 'adaptive', 'ForegroundPolarity', 'bright');
figure(6)
imshow(img_1_bn)

ES = ones(10);
img_1_bn_morf = imclose(img_1_bn, ES); %Cierre morfológico
figure(7)
imshow(img_1_bn_morf)








