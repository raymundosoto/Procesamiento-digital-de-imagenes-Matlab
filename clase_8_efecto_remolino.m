clc
clear all
close all

im = imread('rostro.jpg'); %Lectura de imagen
% im = rgb2gray(im);
im = double(im);  % Conversion a formato doble
%% 
[renglones, columnas, canales] = size(im); %lectura de dimensiones 
[x,y] = meshgrid(1:columnas, 1:renglones); %extracción de (x,y)

%%
x0 = round(columnas/2);    %coordenadas del centro de rotacion
y0 = round(renglones/2);

%% 
im_final = zeros(size(im)); %imagen final, rellena con ceros
im_rot = zeros(size(im)); %imagen rotada, rellena con ceros


for k=1:canales
    
    Ic = im(:,:,k);  %Extracción del canal k, variable auxiliar
    
    distancia = sqrt((x-x0).^2 + (y-y0).^2); %la distancia a cada pixel
    
    k1 = 5;        %valores que se pueden cambiar par mayor/menor efecto
    k2 = 0.013;
    
    theta = k1.*exp(-k2.*distancia); %función auxiliar
    %theta = 0.005.*distancia;  %linea recta
    p = (x-x0).*cos(theta)+(y-y0).*sin(theta)+x0;  % x'
    q = -(x-x0).*sin(theta) + (y-y0).*cos(theta) + y0; % y'
    
    im_final = interp2(x,y,Ic,p,q);  % Colocación de los pixeles en la nueva posición
    im_rot(:,:,k) = im_final; %creación de los canales RGB de la imgen rotada
    
end

im = uint8(im);  %reconversión de la imagen final a formato uint8
im_rot = uint8(im_rot); 

figure(1)
montage({im, im_rot})












