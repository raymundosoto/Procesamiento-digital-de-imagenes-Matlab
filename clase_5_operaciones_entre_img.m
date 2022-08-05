clear all
close all
clc

img_1 = imread('bandera.jpg');
img_2 = imread('cabo.jpg');

[reng, col, canales] =size (img_1); %extraccion de renglones y columnas

img_2 = imresize(img_2,[reng, col]); %redimensionamiento de imagen

%% Suma de imagenes

img_3 = img_1 + img_2; %Suma de imágenes
img_4 = img_2 - img_1; %Resta
img_5 = (img_1./img_2).*255;  %Division
img_6 = (img_1.*img_2)./255;  %Multiplicación
% figure(1)
% montage({img_1, img_2, img_5})

%% Mezclado alfa

alfa = 0.1;
img_C = alfa.*img_1 + (1-alfa).*img_2; %mezclado alfa
% figure(2)
% imshow(img_C)

%% mezclado alfa como animación

for alpha = 0: 0.05 : 1.0;
    
    img_C = alpha.*img_1 + (1-alpha).*img_2;
    figure(3)
    imshow(img_C)
    pause(1)
end
















