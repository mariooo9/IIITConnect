im = imread('face images.jpg');
[r,c] = size(im);
b = im;
b2 = im;
me = zeros(1,4);
subplot(1,3,1) , imshow(im),title('Original');

for x=1:1:r-2
    for y=1:1:c-2
        su = (im(x,y) + im(x + 1 , y) + im(x,y+1) + im(x + 1 , y + 1))/4;
        me(1) = im(x,y);
        me(2) = im(x+1,y);
        me(3) = im(x,y+1);
        me(4) = im(x+1,y+1);
        mm = median(me);
        b2(x,y) = mm;
        b2(x+1,y) = mm;
        b2(x,y+1) = mm;
        b2(x+1,y+1) = mm;
        b(x,y) = su ; b(x + 1, y) = su ;b(x,y+1) = su ;b(x+1,y+1) = su;
    end;
end;
f = b2 - im;
subplot(1,3,2) , imshow(uint8(b)) , title('Mean Image');
subplot(1,3,3) , imshow(b2) , title('Median Image');