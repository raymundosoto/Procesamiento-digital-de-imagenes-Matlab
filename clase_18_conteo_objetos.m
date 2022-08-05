clear all
close all
clc

img = imread('manzana.jpg');
img_gris = rgb2gray(img);

figure(1)
imshow(img)
figure(2)
imshow(img_gris)

img_bn = im2bw(img_gris, 0.9);
ES = ones(5);
img_bn = imopen(img_bn, ES);
img_bn = not(img_bn);

figure(2)
imshow(img_bn)

[img_label, n_objetos] = bwlabel(img_bn,8);
% figure(3)
% imshow(img_label)
disp(['El numero de objetos es ', num2str(n_objetos)])

% RGB = label2rgb(img_label, 'cool');  %Conversion a RGB 
% figure(3)
% imshow(RGB)

fronteras = bwboundaries(img_bn); 

figure(4)
imshow(img_bn)
hold on

for k =1:numel(fronteras)
    plot(fronteras{k}(:,2), fronteras{k}(:,1), 'r', 'Linewidth', 5)
end
hold off







