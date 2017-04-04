I = imread('Earth.jpg');
subplot(2,2,1);
imshow(I);
title('Original');
H = fspecial('motion',20,45);
MotionBlur = imfilter(I,H,'replicate');
subplot(2,2,2);
imshow(MotionBlur);
title('Motion Blur');
J= I-MotionBlur;
subplot(2,2,3);
imshow(J);
title('Masked Image');
K=I+J;
subplot(2,2,4);
imshow(K);
title('Final Image');