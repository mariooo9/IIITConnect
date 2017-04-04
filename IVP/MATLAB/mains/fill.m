im = imread('Image_3.bmp');
figure, imshow(im), title('original')

im = imfill(im,'holes');
figure, imshow(im)