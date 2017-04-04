BW = imread('Image_1.bmp');
subplot(2,2,[1,2]);
imshow(BW);
title('Original Image');

BW2 = bwmorph(BW,'erode',6);
subplot(2,2,3);
imshow(BW2)
title('Eroded Image');

result= BW-BW2;
subplot(2,2,4);
imshow(result);
title('Eroded image - Original Image');