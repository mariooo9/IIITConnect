
f = imread('peppers.png');
% whos f
% f1 = im2double(f);
% whos f1

%image_int8 = im2int8(f);
image_char = num2str(f);
image_uint8 = im2uint8(f); 
image_uint16 = im2uint16(f); 
image_single = im2single(f);
image_double = im2double(f); 

m1 = rgb2gray(image_uint8);
m2 = rgb2gray(image_uint16);
m3 = rgb2gray(image_single);
m4 = rgb2gray(image_double);
%m5 = rgb2gray(image_char);

subplot(3,2,1), subimage(m1); title('uint8');
subplot(3,2,2), subimage(m2); title('uint16');
subplot(3,2,3), subimage(m3); title('Single');
subplot(3,2,4), subimage(m4); title('Double');
%subplot(3,2,5), subimage(image_char); title('char');