clear all
close all
clc

%% Lectura y conversión de imagen
img = imread('lineas_carretera_2.jpg');  %Lectura
figure
imshow(img)

img_gris = rgb2gray(img); %conversión a grises
figure
imshow(img_gris)

%Binarizado
%img_bn = imbinarize(img_gris, 'adaptive', 'ForegroundPolarity','dark'); %, 'Sensitivity', 0.04);
img_bn = im2bw(img_gris, 0.8);

% figure
% imshow(img_bn)



%Operaciones morfologicas
ES_1 = ones(4);
img_bn = imerode(img_bn, ES_1);
ES_2 = ones(3);
img_bn = imopen(img_bn,ES_2);
% img_bn = bwskel(img_bn);

ES_3 = ones(7);
img_bn = imerode(img_bn, ES_2);

figure
imshow(img_bn)

%% Transformada de Hough
[H, T, R] = hough(img_bn); % T de Hough
figure
imshow(H, [],'XData', T, 'YData', R, 'InitialMagnification', 'fit')
axis on
axis normal
colormap(gca, hot)

%% Extracción de los valores de theta y r donde hay una posible recta
P = houghpeaks(H, 5, 'Threshold', 0.0001); %deteccion de coordenadas 
x = T(P(:,2));                             % Posibles lineas rectas
y = R(P(:,1));
hold on
plot(x,y, '+', 'Color', 'green', 'Linewidth', 3)
hold off

% Deteccion y graficado de lineas
lineas = houghlines(img_bn, T, R, P);

figure
imshow(img_bn)
hold on

 for k = 1: length(lineas)
     xy = [lineas(k).point1; lineas(k).point2];
     plot(xy(:,1), xy(:,2), 'Linewidth', 3, 'Color', 'green')
 end
 hold off













