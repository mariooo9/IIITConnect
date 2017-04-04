A = imread('face images.jpg');

i = 1; j = 1;
[rows, cols] = size(A);
C(rows/2,cols/2) = 0;
for x = 1:2:rows
    for y = 1:2:cols
        block = [A(x,y),A(x+1,y),A(x,y+1),A(x+1,y+1)];
        C(i,j) = mean(block(:));
        j = j+1;
    end
    i = i+1;
    j = 1;
end
C = uint8(C);

subplot(1,2,1);
imshow(A);                          %// show original image
title('Original Image');
subplot(1,2,2);
imshow(C);                          %// show resulting image
title('Resultant Image');