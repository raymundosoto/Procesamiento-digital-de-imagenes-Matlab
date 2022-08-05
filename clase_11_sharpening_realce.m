clear all
close all
clc

img = imread('perro.jpg');
sharpen_1 = [1 -2 1;
             -2 5 -2;
             1 -2 1];
         
img_f_1 = imfilter(img, sharpen_1); %Filtrado con sharpen 1

sharpen_2 = [-1 -1 -1;
             -1 9 -1;
             -1 -1 -1];
img_f_2 = imfilter(img, sharpen_2); %Filtrado con sharpen 2

sharpen_3 = [0 -1 0;
            -1  5 -1;
             0 -1 0];
img_f_3 = imfilter(img, sharpen_3); %Filtrado con sharpen 3


repujado = [-2 -1 0;    %filtro de repujado
             -1 1 1;
              0 1 2];
img_rep = imfilter(img, repujado);  %filtrado con repujado       

figure(1)
imshow(img)
% figure(2)
% imshow(img_f_1)
% figure(3)
% imshow(img_f_2)
figure(4)
imshow(img_f_3)
% figure(5)
% imshow(img_rep)

