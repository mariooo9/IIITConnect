
image=imread('Earth.jpg');
subplot(1,3,1);
imshow(image);
title('Original Image');

m=[1 1 1; 1 -8 1; 1 1 1]; % laplace filter
img= im2double(image); % convert image from uint to double
f1=imfilter(img,m); %applying Laplacian with Scaling to original Image
subplot(1,3,2);
imshow(f1);
title('Laplacian Filtered Image');

r=img-f1; % perform the image editing with double precision variables and NOT with unsigned ints.
subplot(1,3,3);
imshow(r);