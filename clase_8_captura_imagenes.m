clc
clear all
close all

webcamlist;
cam = webcam(1);  %creación de un objeto para capturar imagen
net = googlenet;
while true
img = snapshot(cam);  %captura de imagen
%img_gris = rgb2gray(img);
%img_bn = im2bw(img, 0.5);
img_size = imresize(img, [224,224]);
figure(1)
imshow(img)
objeto_rec = classify(net, img_size)
end


