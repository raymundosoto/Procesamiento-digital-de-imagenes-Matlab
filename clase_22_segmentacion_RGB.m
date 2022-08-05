clc
clear all
close all

img = imread('celulas_2.jpg');
figure
imshow(img)
impixelinfo

[y,x,c] = size(img); %tamano de la imagen

img_seg(1:y, 1:x, c)=0; %Creacion de la imagen segmentada
img_seg = uint8(img_seg); %Conversion a uint8

img_mascara(1:y, 1:x)=0; %Creacion de mascar binaria
img_mascara=logical(img_mascara); %COnversion a formato logico

R = [106 206];    %Limites de la tripelta RGB [inferior y superior]
G = [58 121];
B = [77 120];

for j = 1:y
    for i = 1:x 
   
        %if (img(j,i,1) ==250) && (img(j,i,2) == 233) && (img(j,i,3) == 21)
        if ((img(j,i,1) >=R(1) ) && (img(j,i,1) <= R(2))) && ...
                ((img(j,i,2) >= G(1)) && (img(j,i,2) <= G(2))) && ...
                ((img(j,i,3) >= B(1)) && (img(j,i,3) <= B(2)))
            
            img_seg(j,i,1)= img(j,i,1);
            img_seg(j,i,2)= img(j,i,2);
            img_seg(j,i,3)= img(j,i,3);
            
            img_mascara(j,i)=1; 
        else
            img_seg(j,i,1)=0;
            img_seg(j,i,2)=0;
            img_seg(j,i,3)=0;
        end
  
    end
end


figure
imshow(img_seg)
figure
imshow(img_mascara)










