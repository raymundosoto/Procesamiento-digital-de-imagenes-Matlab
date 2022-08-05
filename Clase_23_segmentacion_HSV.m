clc
clear all
close all
format short

img = imread('frutas_saludables.jpg');
img = rgb2hsv(img);
figure
imshow(img)
impixelinfo
[y,x,c] = size(img); %tamano de la imagen

img_seg(1:y, 1:x, c)=0; %Creacion de la imagen segmentada


img_mascara(1:y, 1:x)=0; %Creacion de mascar binaria
img_mascara=logical(img_mascara); %COnversion a formato logico

H = [0.08 0.10];    %Limites de la tripelta RGB [inferior y superior]
S = [0.8 1.0];
V = [0.91 1.0];

for j = 1:y
    for i = 1:x 
   
        %if (img(j,i,1) ==250) && (img(j,i,2) == 233) && (img(j,i,3) == 21)
        if ((img(j,i,1) >=H(1) ) && (img(j,i,1) <= H(2))) && ...
                ((img(j,i,2) >= S(1)) && (img(j,i,2) <= S(2))) && ...
                ((img(j,i,3) >= V(1)) && (img(j,i,3) <= V(2)))
            
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


img_seg = hsv2rgb(img_seg);
img = hsv2rgb(img);

figure
imshow(img)

figure
imshow(img_seg)

figure
imshow(img_mascara)

%% Operaciones morfologicas

ES = ones(7);
img_mascara = imclose(img_mascara, ES);
img_mascara = bwareafilt(img_mascara, 1, 'largest');
figure
imshow(img_mascara)

stats = regionprops(img_mascara, 'BoundingBox');

figure
imshow(img)
hold on
for k = 1:length(stats)
    rectangle('Position', stats(k).BoundingBox, 'EdgeColor', 'g', 'Linewidth', 3)
hold off
end






