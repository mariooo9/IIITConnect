I = imread('Image_3.bmp');
imshow(I)
hold on
title('Original Image');

mask = false(size(I));
mask(50:150,40:170) = true;

visboundaries(mask,'Color','b');

bw = activecontour(I, mask, 200, 'edge');

visboundaries(bw,'Color','r'); 
title('Initial contour (blue) and final contour (red)');
figure;
imshow(bw)
title('Segmented Image');