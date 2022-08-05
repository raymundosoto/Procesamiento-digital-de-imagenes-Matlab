clc
clear all
close all

img = imread('luna.png');
%img = rgb2gray(img);
img = imresize(img,2); 

ES = [1 1 1 1 1 1 1;    %Elemento estructural tophat
      1 1 1 1 1 1 1;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0];
  
img_top_hat = imtophat(img, ES);

figure(1)
imshow(img)
figure(2)
imshow(img_top_hat)

figure(3)
imshow(img + img_top_hat)




