clear all
close all
clc

img = imread('chichen.jpg');
%img = imresize(img,2);
%img = rgb2gray(img);

k_1 = [0 1 0;
       1 -4 1;
       0  1 0];  %Kernel laplaciano 1

k_2 = [0 -1 0;
       -1 4 -1;
       0 -1 0];  %Kernel laplaciano 2
   
k_3= [1 1 1;
      1 -8 1;
      1 1 1];  %Kernel laplaciano 3

k_4= [-1 -1 -1;
      -1 8 -1;
      -1 -1 -1];  %Kernel laplaciano 4
   
img_borde_1 = imfilter(img, k_1);
img_borde_2 = imfilter(img, k_2); 
img_borde_3 = imfilter(img, k_3);
img_borde_4 = imfilter(img, k_4);

%% Realzado

img_realce_1 = img  - img_borde_1;  %realzado con kernel 1
img_realce_2 = img  + img_borde_2;  %realzado con kernel 2
img_realce_3 = img  - img_borde_3;  %realzado con kernel 3
img_realce_4 = img  + img_borde_4;  %realzado con kernel 4

figure(1)
imshow(img)
figure(2)
imshow(img_realce_1)
figure(3)
imshow(img_realce_2)
figure(4)
imshow(img_realce_3)
figure(5)
imshow(img_realce_4)




