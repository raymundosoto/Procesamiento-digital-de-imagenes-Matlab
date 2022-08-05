clear all
clc
close all

img = imread('img_luna.jpg');
figure(1)
imshow(img)

k_9 = [1/9 1/9 1/9;            % Kernel promedio de 9 puntos
          1/9 1/9 1/9;
          1/9 1/9 1/9];
      
k_25 = (1/25).*ones(5);  %filtro de 5 x 5 (25 puntos)      
k_36 = (1/36).*ones(6);  %filtro de 6 x 6 (36 puntos)

img_filt = imfilter(img, k_36);

figure(2)
imshow(img_filt)
