img = imread('peppers.png');
red = img(:,:,1); 
green = img(:,:,2);
blue = img(:,:,3); 
a = zeros(size(img, 1), size(img, 2));
r = cat(3, red, a, a);
g = cat(3, a, green, a);
b = cat(3, a, a, blue);
rag = cat(3,red,green,a);
gab = cat(3,a,green,blue);
rab = cat(3,red,a,blue);
subplot(3,3,1);
 imshow(img), title('Original image')
 subplot(3,3,2);
 imshow(r), title('Red channel')
 subplot(3,3,3);
 imshow(g), title('Green channel')
subplot(3,3,4);
imshow(b), title('Blue channel')
subplot(3,3,5);
imshow(rag), title('Red and Green channel')
subplot(3,3,6);
imshow(gab), title('Green and Blue channel')
subplot(3,3,7);
imshow(rab), title('Red and Blue channel')


