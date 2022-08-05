close all
clear all
clc
%% Lectura de imagen
img = imread('herramientas.jpg');
figure(1)
imshow(img)
%% Conversión a gris
img_gris = rgb2gray(img);
%img_gris = histeq(img_gris);
figure(2)
imshow(img_gris)

%% Binarización
img_bn = imbinarize(img_gris, 'adaptive', 'ForegroundPolarity', 'bright', 'Sensitivity', 0.4);
figure(3)
imshow(img_bn)
%% Operaciones morfologicas
ES = ones(5);
img_bn = imopen(img_bn, ES);
figure(4)
imshow(img_bn)

%% Extracción de características (área)

stats = regionprops('table', img_bn, 'Area');
Area_datos = sort(stats.Area);

%% Filtrado de mascara binaria

%img_bn = bwareafilt(img_bn, [200 10900]);
img_bn = bwareafilt(img_bn, 40, 'largest');
figure(5)
imshow(img_bn)

%% Identificación de objetos

stats_1 = regionprops(img_bn, 'BoundingBox', 'Centroid');
figure(6)
imshow(img)
hold on

for k = 1: size(stats_1,1);
    caja = stats_1(k).BoundingBox;
    rectangle('Position',[caja(1), caja(2), caja(3), caja(4)] , 'EdgeColor', 'g', 'Linewidth',1);
    text(caja(1)+20, caja(2), num2str(k), 'Color', 'g', 'FontSize', 30); 
end
hold off


figure(7)
imshow(img)
hold on
centroides = cat(1,stats_1.Centroid);
plot(centroides(:,1), centroides(:,2), '+g', 'Linewidth', 5)
hold off

%% Conteo de objetos

[img_label, n_obj] = bwlabel(img_bn);

disp(['El número de objetos encontrados es ', num2str(n_obj)])




























