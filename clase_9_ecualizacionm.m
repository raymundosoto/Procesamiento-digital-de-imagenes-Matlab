clear all
close all
clc

img = imread('pic_contr_2.jpg');
figure(1)
subplot(2,1,1)
imshow(img)
subplot(2,1,2)
imhist(img)

%% Ajuste de contraste
img_mejor = histeq(img);
figure(2)
subplot(2,1,1)
imshow(img_mejor)
subplot(2,1,2)
imhist(img_mejor)

figure(3)
imshow(img)
figure(4)
imshow(img_mejor)

