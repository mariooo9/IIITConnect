image = imread('Image_2.bmp');

se  = strel('disk',5); 
se2 = strel('disk',3);

image1 = image;

for i = 1:2
    image2 = imerode(image2, se2);
    %image2 = imdilate(image2, se2);
end

for i = 1:2
    image1 = imdilate(image1, se);
    %image1 = imerode(image1, se);
end

image2 = image1;


subplot(2,1,1);
imshow(image);
title('Orignal Image');

subplot(2,1,2);
imshow(image2);
title('After Removing Noise');