clear all
close all
clc

img = imread('manzana.jpg');
img = rgb2gray(img);


laplaciano = [0 1 0;       %laplaciano
             1 -4 1;
              0 1 0];
img_lap = imfilter(img, laplaciano);  

figure(1)
imshow(img)
figure(2)
imshow(10.*img_lap)
%imagesc(img_lap)


