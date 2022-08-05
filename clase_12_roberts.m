clear all
close all
clc

tic
img = imread('partenon.jpg');
%img = rgb2gray(img);

f_roberts_y = [0 1;-1 0]; %Roberts dirección y
          
f_roberts_x = [1 0;0 -1]; %Roberts en direccion x
 
img_borde_y = imfilter(img, f_roberts_y);
img_borde_x = imfilter(img, f_roberts_x);
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