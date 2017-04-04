img = imread('image.png');
%figure, imshow(img);

img1 = imcrop(img,[16.5 16.5 440 316]);
figure,
subplot(2,2,1)
imshow(img1);
subplot(2,2,2)
h1 = histogram(img1);
ht1= histeq(img1,64);
subplot(2,2,3)
%imshow(ht1);
plot((0:255)/255,T);
subplot(2,2,4)
imhist(img1,64);

% img2 = imcrop(img,[480.5 2.5 353 344]);
% figure,
% subplot(1,2,1)
% imshow(img2);
% subplot(1,2,2)
% h1 = histogram(img2);
% img3 = imcrop(img,[17.5 376.5 442 331]);
% figure,
% subplot(1,2,1)
% imshow(img3);
% subplot(1,2,2)
% h1 = histogram(img3);
% img4 = imcrop(img,[480.5 353.5 395 396]);
% %subplot(2,2,4);
% figure,
% subplot(1,2,1)
% imshow(img4);
% subplot(1,2,2)
% h1 = histogram(img4);
