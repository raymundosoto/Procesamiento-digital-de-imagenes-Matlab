clc
clear all
close all

img = imread('rostro.jpg');
%% Desplazamiento
desplazamiento = [100, 100];
%img_transl = imtranslate(img, desplazamiento);   
img_transl = imtranslate(img, desplazamiento,'OutputView', 'full' );   
%% Escalamiento
% img_escl = imresize(img, 0.1, 'method', 'bilinear'); %Con factor de
% escala
img_escl = imresize(img, [1000,200], 'method', 'bilinear');

%% Inclinamiento o warping

% forma = affine2d([1 0 0;0.5 1 0;0 0 1]); 
forma = affine2d([2 0 0;0.5 1 0;0 0 1]); %Matriz de inclinamiento
img_warp = imwarp(img, forma); % inclinamiento

%% Rotacion

angulo = -85; %Angulo de rotacion
img_rot = imrotate(img, angulo,  'bilinear','loose');   %rotacion

%% Efecto Espejo

img_esp = flip(img,1); % 1 se invierten los renglones, 2 se invierten las columnas


figure(1)
imshow(img)
figure(2)
imshow(img_esp)