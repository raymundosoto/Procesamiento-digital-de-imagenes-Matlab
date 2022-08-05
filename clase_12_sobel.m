clear all
close all
clc

tic
img = imread('mono.jpg');
%img = rgb2gray(img);

f_sobel_y = [-1 0 1;
             -2 0 2;
             -1 0 1];  %Sobel en direccion y
          
f_sobel_x = [-1 -2 -1;
             0 0 0;
             1 2 1];  %Sobel en direccion x

img_borde_y = imfilter(img, f_sobel_y);
img_borde_x = imfilter(img, f_sobel_x);
img_mag = abs(img_borde_x)+ abs(img_borde_y); %magnitud


figure(1)
imshow(img)
figure(2)
imshow(img_borde_x)
figure(3)
imshow(img_borde_y)
figure(4)
imshow(img_mag)

%% mejoramiento

img_mejor =img - img_mag;

figure(5)
imshow(img_mejor)
toc





