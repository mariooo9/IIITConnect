image = imread('Image_3.bmp');
image2 = imfill(image, 'holes');

subplot(2,1,1);
imshow(image);
title('Original Image');

subplot(2,1,2);
imshow(image2);
title('Final Image');