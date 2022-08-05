clc
clear all
close all

img = imread('radiografia.png');
figure(1)
imshow(img)

img = double(img); %Conversion a double

%% ajuste gamma
gamma = .7;
img_gamma = 255.*((img./255).^(1/gamma)); %Ajuste gamma
img_gamma = uint8(img_gamma); %conversion a uint8
figure(2)
imshow(img_gamma)