clc;close all; clear all;
h=0.1*ones(1,10);        %lpf
I=imread('D:\MATLAB\bin\lena.jpg');
% figure;
% imshow(I);
G=rgb2gray(I);
figure;
subplot(1,2,1);
imshow(G);     %grayscale image
O=[];
for a=1:length(G)
    O=[O;conv(G(a,:),h)];
end
subplot(1,2,2);
imshow(mat2gray(O));



h=[0.5 -0.5];  %%%hpf

figure;
subplot(1,2,1);
imshow(G);     %grayscale image
O=[];
for a=1:length(G)
    O=[O;conv(G(a,:),h)];
end
subplot(1,2,2);
imshow(mat2gray(O));

