clc
clear all
close all

%% Lectura de la imagen
img = imread('eye_tiger.jpg');
figure(1)
imshow(img)

%% operaciones
C =.2;
img_1 = img + C; % Suma
img_2 = img - C; % Resta
img_3 = C.*img; % multiplicaci�n
img_4 = img./C; %Divisi�n 
figure(2)
imshow(img_4)

