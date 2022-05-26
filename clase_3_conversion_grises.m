clear
clear all
clc

img = imread('mono.jpg'); % Lectura de imagen
figure(1)
imshow(img)   %Visualiaci�n de la imagen

%% Conversi�n a escala de grises

img_gris = rgb2gray(img); 
figure(2)
imshow(img_gris)

imwrite(img_gris, 'mono_gris.png');% Guardar imagen en Matlab


