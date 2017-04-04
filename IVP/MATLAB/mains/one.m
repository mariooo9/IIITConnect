im = imread('Earth.jpg');
subplot(3,1,1);
imshow(im);title('original')
jm = imgaussfilt(im,2);
subplot(3,1,2); imshow(jm); title('mask')
km = jm-im;
zm = km + im;
subplot(3,1,3);
imshow(zm);title('mask + original')