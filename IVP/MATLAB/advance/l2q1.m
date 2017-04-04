a = imread('image1.png');
b = imread('image2.png');

I = imresize(a,[100 150]);
J = imresize(b,[100 150]);

sum = (I + J)/2;
mx = -1;
mi = 256;
for i = 1:size(sum,1)
    for j = 1:size(sum,2)
        mx = max(mx, sum(i,j));
        mi = min(mi, sum(i, j));
    end
end
disp(mx);
disp(mi);
subplot(2,2,1)
imshow(a); 
title('Image 1');
subplot(2,2,2)
imshow(b);
title('Image 2');
subplot(2,2,[3,4])
imshow(sum);
title('Resultant Image');
