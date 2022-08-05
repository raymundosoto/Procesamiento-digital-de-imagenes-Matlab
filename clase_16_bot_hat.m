clc
clear all
close all

img = imread('luna_1.jpg');
img = imresize(img,2); 

ES = [1 1 1 1 1 1 1;    %Elemento estructural tophat
      1 1 1 1 1 1 1;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0;
      0 0 1 1 1 0 0];
  
% ES = [1 1 1 1;
%       0 1 1 0;
%       0 1 1 0;
%       0 1 1 0];  
  
  
img_bot_hat = imbothat(img, ES);

figure(1)
imshow(img)
figure(2)
imshow(img_bot_hat)

figure(3)
imshow(img - img_bot_hat)
