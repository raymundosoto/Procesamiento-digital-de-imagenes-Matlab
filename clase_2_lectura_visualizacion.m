clear
clear all
clc

img = imread('chichen.jpg'); % Lectura de imagen
figure(1)
imshow(img)   %Visualiación de la imagen

%%  Lectura de información

img(100, 100, 3); %  imagen(renglon, columna, canal)

img(100, 100, 1:3); % accesos a (renglon, columna, 3 canales)

%% Lectura de más renglones y más columnas

img_1 = img(100:1200, 500:1000, 1:3);
figure(2)
imshow(img_1)

%% Lectura de canales individuales

img_R = img(:,:,1);  %Lectura de todos los renglones y columnas
img_G = img(:,:,2);
img_B = img(:,:,3);

figure(3)
imshow([img_R; img_G; img_B])
















    

