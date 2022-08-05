clear all
close all
clc

img = imread('foto_rostro.jpg');
%img = rgb2gray(img);


gx = [0 0 0;       %gradiente en x
      -1 1 0;
      0 0 0];
 gy = [0 -1 0;      %gradiente en y
       0 1 0;
       0 0 0];
   
img_gx = imfilter(img, gx); %Imagen con el gradiente en x
img_gy = imfilter(img, gy);  %imagen con el gradiente en y

%magnitud del gradiente

img_mag_grad = abs(img_gx)+abs(img_gy); %magnitud del gradiente

figure(1)
imshow(img)
figure(2)
imshow(img_gx)
figure(3)
imshow(img_gy)

figure(4)
imshow(10.*img_mag_grad)
% imagesc(img_mag_grad)
% colormap jet
% colorbar







