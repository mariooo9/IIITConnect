im = imread('Image_2.bmp');
figure, imshow(im), title('original')
se = strel('line',11,90);

im = imerode(im, se);
figure
subplot(2,1,1), imshow(im), title('after erosion')
im = imdilate(im, se);
subplot(2,1,2), imshow(im), title('after dilation')
%im = bwmorph(im,'remove');

