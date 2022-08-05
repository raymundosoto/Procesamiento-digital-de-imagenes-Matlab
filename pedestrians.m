clear all
close all
clc

img = imread('peatones.jpg');
img_gris = rgb2gray(img);
img_bn = imbinarize(img_gris, 'adaptive', 'ForegroundPolarity', 'bright', ...
            'sensitivity', 0.95);
img_bn_n = not(img_bn);

ES = ones(4);
img_bn_final = imopen(img_bn_n, ES);

figure
imshow(img_gris)
figure
imshow(img_bn)
figure
imshow(img_bn_n)
figure
imshow(img_bn_final)

%% Filtrado  y rellanado
Areas = regionprops('table', img_bn_final, 'Area');
sort(Areas.Area)
img_bn_fil = bwareafilt(img_bn_final, [70, 1000]);

figure
imshow(img_bn_fil)
img_bn_fil = imfill(img_bn_fil, 'holes');
figure
imshow(img_bn_fil)

%% Localización

stats = regionprops(img_bn_fil, 'BoundingBox');

figure
imshow(img)
hold on

for k = 1:size(stats)
    rectangle('Position', stats(k).BoundingBox, 'EdgeColor', 'g'...
        ,'Linewidth', 3)
end

imwrite(img,'peatones_identificados.jpg')












