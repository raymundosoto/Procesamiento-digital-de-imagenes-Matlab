clear all
close all
clc

img = imread('estrellas.jpg');
img_gris = rgb2gray(img);
figure(1)
montage({img, img_gris})

img_bn = imbinarize(img_gris, 'adaptive', 'ForegroundPolarity','dark');

SE_1 = ones(7);
img_bn = imopen(img_bn, SE_1);
SE_2 = ones(8);
img_bn = imerode(img_bn, SE_2);
figure(2)
imshow(img_bn)

%% Hit-Miss

B_1 = [1 1 0;
       1 1 0;
       1 1 0];
B_2 = [0 0 1;
       0 0 1;
       0 0 1];
   
img_bn_ptr = bwhitmiss(img_bn, B_2, B_1);
figure(3)
imshow(img_bn_ptr)
   
   
   
   








figure(2)
imshow(img_bn)