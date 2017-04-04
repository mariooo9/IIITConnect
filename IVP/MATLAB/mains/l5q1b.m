BW = imread('Image_1.bmp');
subplot(2,2,[1,2]);
imshow(BW);
title('Original Image');

BW2 = bwmorph(BW,'dilate',4);
subplot(2,2,3);
imshow(BW2)
title('Dilated Image');

result= BW2-BW;
subplot(2,2,4);
imshow(result);
title('Original Image - Dilated Image');